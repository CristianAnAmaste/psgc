-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sgc_proyecto
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(70) NOT NULL,
  `apellido_mam` varchar(45) NOT NULL,
  `apellido_pap` varchar(45) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `genero` varchar(15) NOT NULL,
  `correo_electronico` varchar(100) NOT NULL,
  `id_direccion` int(11) NOT NULL,
  `id_nacionalidad` int(11) NOT NULL,
  `id_institucion` int(11) DEFAULT NULL,
  `id_nivel` int(11) NOT NULL,
  `id_ocupacion` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `correo_electronico_UNIQUE` (`correo_electronico`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comunas`
--

DROP TABLE IF EXISTS `comunas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `comunas` (
  `comuna_id` int(11) NOT NULL AUTO_INCREMENT,
  `comuna_nombre` varchar(64) CHARACTER SET utf8 NOT NULL,
  `provincia_id` int(11) NOT NULL,
  PRIMARY KEY (`comuna_id`)
) ENGINE=MyISAM AUTO_INCREMENT=346 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comunas`
--

LOCK TABLES `comunas` WRITE;
/*!40000 ALTER TABLE `comunas` DISABLE KEYS */;
INSERT INTO `comunas` VALUES (1,'Arica',1),(2,'Camarones',1),(3,'General Lagos',2),(4,'Putre',2),(5,'Alto Hospicio',3),(6,'Iquique',3),(7,'Camiña',4),(8,'Colchane',4),(9,'Huara',4),(10,'Pica',4),(11,'Pozo Almonte',4),(12,'Antofagasta',5),(13,'Mejillones',5),(14,'Sierra Gorda',5),(15,'Taltal',5),(16,'Calama',6),(17,'Ollague',6),(18,'San Pedro de Atacama',6),(19,'María Elena',7),(20,'Tocopilla',7),(21,'Chañaral',8),(22,'Diego de Almagro',8),(23,'Caldera',9),(24,'Copiapó',9),(25,'Tierra Amarilla',9),(26,'Alto del Carmen',10),(27,'Freirina',10),(28,'Huasco',10),(29,'Vallenar',10),(30,'Canela',11),(31,'Illapel',11),(32,'Los Vilos',11),(33,'Salamanca',11),(34,'Andacollo',12),(35,'Coquimbo',12),(36,'La Higuera',12),(37,'La Serena',12),(38,'Paihuaco',12),(39,'Vicuña',12),(40,'Combarbalá',13),(41,'Monte Patria',13),(42,'Ovalle',13),(43,'Punitaqui',13),(44,'Río Hurtado',13),(45,'Isla de Pascua',14),(46,'Calle Larga',15),(47,'Los Andes',15),(48,'Rinconada',15),(49,'San Esteban',15),(50,'La Ligua',16),(51,'Papudo',16),(52,'Petorca',16),(53,'Zapallar',16),(54,'Hijuelas',17),(55,'La Calera',17),(56,'La Cruz',17),(57,'Limache',17),(58,'Nogales',17),(59,'Olmué',17),(60,'Quillota',17),(61,'Algarrobo',18),(62,'Cartagena',18),(63,'El Quisco',18),(64,'El Tabo',18),(65,'San Antonio',18),(66,'Santo Domingo',18),(67,'Catemu',19),(68,'Llaillay',19),(69,'Panquehue',19),(70,'Putaendo',19),(71,'San Felipe',19),(72,'Santa María',19),(73,'Casablanca',20),(74,'Concón',20),(75,'Juan Fernández',20),(76,'Puchuncaví',20),(77,'Quilpué',20),(78,'Quintero',20),(79,'Valparaíso',20),(80,'Villa Alemana',20),(81,'Viña del Mar',20),(82,'Colina',21),(83,'Lampa',21),(84,'Tiltil',21),(85,'Pirque',22),(86,'Puente Alto',22),(87,'San José de Maipo',22),(88,'Buin',23),(89,'Calera de Tango',23),(90,'Paine',23),(91,'San Bernardo',23),(92,'Alhué',24),(93,'Curacaví',24),(94,'María Pinto',24),(95,'Melipilla',24),(96,'San Pedro',24),(97,'Cerrillos',25),(98,'Cerro Navia',25),(99,'Conchalí',25),(100,'El Bosque',25),(101,'Estación Central',25),(102,'Huechuraba',25),(103,'Independencia',25),(104,'La Cisterna',25),(105,'La Granja',25),(106,'La Florida',25),(107,'La Pintana',25),(108,'La Reina',25),(109,'Las Condes',25),(110,'Lo Barnechea',25),(111,'Lo Espejo',25),(112,'Lo Prado',25),(113,'Macul',25),(114,'Maipú',25),(115,'Ñuñoa',25),(116,'Pedro Aguirre Cerda',25),(117,'Peñalolén',25),(118,'Providencia',25),(119,'Pudahuel',25),(120,'Quilicura',25),(121,'Quinta Normal',25),(122,'Recoleta',25),(123,'Renca',25),(124,'San Miguel',25),(125,'San Joaquín',25),(126,'San Ramón',25),(127,'Santiago',25),(128,'Vitacura',25),(129,'El Monte',26),(130,'Isla de Maipo',26),(131,'Padre Hurtado',26),(132,'Peñaflor',26),(133,'Talagante',26),(134,'Codegua',27),(135,'Coínco',27),(136,'Coltauco',27),(137,'Doñihue',27),(138,'Graneros',27),(139,'Las Cabras',27),(140,'Machalí',27),(141,'Malloa',27),(142,'Mostazal',27),(143,'Olivar',27),(144,'Peumo',27),(145,'Pichidegua',27),(146,'Quinta de Tilcoco',27),(147,'Rancagua',27),(148,'Rengo',27),(149,'Requínoa',27),(150,'San Vicente de Tagua Tagua',27),(151,'La Estrella',28),(152,'Litueche',28),(153,'Marchihue',28),(154,'Navidad',28),(155,'Peredones',28),(156,'Pichilemu',28),(157,'Chépica',29),(158,'Chimbarongo',29),(159,'Lolol',29),(160,'Nancagua',29),(161,'Palmilla',29),(162,'Peralillo',29),(163,'Placilla',29),(164,'Pumanque',29),(165,'San Fernando',29),(166,'Santa Cruz',29),(167,'Cauquenes',30),(168,'Chanco',30),(169,'Pelluhue',30),(170,'Curicó',31),(171,'Hualañé',31),(172,'Licantén',31),(173,'Molina',31),(174,'Rauco',31),(175,'Romeral',31),(176,'Sagrada Familia',31),(177,'Teno',31),(178,'Vichuquén',31),(179,'Colbún',32),(180,'Linares',32),(181,'Longaví',32),(182,'Parral',32),(183,'Retiro',32),(184,'San Javier',32),(185,'Villa Alegre',32),(186,'Yerbas Buenas',32),(187,'Constitución',33),(188,'Curepto',33),(189,'Empedrado',33),(190,'Maule',33),(191,'Pelarco',33),(192,'Pencahue',33),(193,'Río Claro',33),(194,'San Clemente',33),(195,'San Rafael',33),(196,'Talca',33),(197,'Arauco',34),(198,'Cañete',34),(199,'Contulmo',34),(200,'Curanilahue',34),(201,'Lebu',34),(202,'Los Álamos',34),(203,'Tirúa',34),(204,'Alto Biobío',35),(205,'Antuco',35),(206,'Cabrero',35),(207,'Laja',35),(208,'Los Ángeles',35),(209,'Mulchén',35),(210,'Nacimiento',35),(211,'Negrete',35),(212,'Quilaco',35),(213,'Quilleco',35),(214,'San Rosendo',35),(215,'Santa Bárbara',35),(216,'Tucapel',35),(217,'Yumbel',35),(218,'Chiguayante',36),(219,'Concepción',36),(220,'Coronel',36),(221,'Florida',36),(222,'Hualpén',36),(223,'Hualqui',36),(224,'Lota',36),(225,'Penco',36),(226,'San Pedro de La Paz',36),(227,'Santa Juana',36),(228,'Talcahuano',36),(229,'Tomé',36),(230,'Bulnes',56),(231,'Chillán',56),(232,'Chillán Viejo',56),(233,'Cobquecura',55),(234,'Coelemu',55),(235,'Coihueco',54),(236,'El Carmen',56),(237,'Ninhue',55),(238,'Ñiquen',54),(239,'Pemuco',56),(240,'Pinto',56),(241,'Portezuelo',55),(242,'Quillón',56),(243,'Quirihue',55),(244,'Ránquil',55),(245,'San Carlos',54),(246,'San Fabián',54),(247,'San Ignacio',56),(248,'San Nicolás',54),(249,'Treguaco',55),(250,'Yungay',56),(251,'Carahue',38),(252,'Cholchol',38),(253,'Cunco',38),(254,'Curarrehue',38),(255,'Freire',38),(256,'Galvarino',38),(257,'Gorbea',38),(258,'Lautaro',38),(259,'Loncoche',38),(260,'Melipeuco',38),(261,'Nueva Imperial',38),(262,'Padre Las Casas',38),(263,'Perquenco',38),(264,'Pitrufquén',38),(265,'Pucón',38),(266,'Saavedra',38),(267,'Temuco',38),(268,'Teodoro Schmidt',38),(269,'Toltén',38),(270,'Vilcún',38),(271,'Villarrica',38),(272,'Angol',39),(273,'Collipulli',39),(274,'Curacautín',39),(275,'Ercilla',39),(276,'Lonquimay',39),(277,'Los Sauces',39),(278,'Lumaco',39),(279,'Purén',39),(280,'Renaico',39),(281,'Traiguén',39),(282,'Victoria',39),(283,'Corral',40),(284,'Lanco',40),(285,'Los Lagos',40),(286,'Máfil',40),(287,'Mariquina',40),(288,'Paillaco',40),(289,'Panguipulli',40),(290,'Valdivia',40),(291,'Futrono',41),(292,'La Unión',41),(293,'Lago Ranco',41),(294,'Río Bueno',41),(295,'Ancud',42),(296,'Castro',42),(297,'Chonchi',42),(298,'Curaco de Vélez',42),(299,'Dalcahue',42),(300,'Puqueldón',42),(301,'Queilén',42),(302,'Quemchi',42),(303,'Quellón',42),(304,'Quinchao',42),(305,'Calbuco',43),(306,'Cochamó',43),(307,'Fresia',43),(308,'Frutillar',43),(309,'Llanquihue',43),(310,'Los Muermos',43),(311,'Maullín',43),(312,'Puerto Montt',43),(313,'Puerto Varas',43),(314,'Osorno',44),(315,'Puero Octay',44),(316,'Purranque',44),(317,'Puyehue',44),(318,'Río Negro',44),(319,'San Juan de la Costa',44),(320,'San Pablo',44),(321,'Chaitén',45),(322,'Futaleufú',45),(323,'Hualaihué',45),(324,'Palena',45),(325,'Aisén',46),(326,'Cisnes',46),(327,'Guaitecas',46),(328,'Cochrane',47),(329,'O\'higgins',47),(330,'Tortel',47),(331,'Coihaique',48),(332,'Lago Verde',48),(333,'Chile Chico',49),(334,'Río Ibáñez',49),(335,'Antártica',50),(336,'Cabo de Hornos',50),(337,'Laguna Blanca',51),(338,'Punta Arenas',51),(339,'Río Verde',51),(340,'San Gregorio',51),(341,'Porvenir',52),(342,'Primavera',52),(343,'Timaukel',52),(344,'Natales',53),(345,'Torres del Paine',53);
/*!40000 ALTER TABLE `comunas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direccion`
--

DROP TABLE IF EXISTS `direccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `direccion` (
  `id_direccion` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_calle` varchar(70) DEFAULT NULL,
  `numero_calle` int(5) DEFAULT NULL,
  `comuna_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_direccion`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direccion`
--

LOCK TABLES `direccion` WRITE;
/*!40000 ALTER TABLE `direccion` DISABLE KEYS */;
INSERT INTO `direccion` VALUES (1,'isauro torres',368,'325'),(2,'isauro torres',368,'42'),(3,'isauro torres',258,'33'),(4,'perales',678,'35'),(5,'asdas',123,'270'),(6,'isauro torres',123,'42'),(7,'perales',123,'290'),(8,'isauro torres',678,'268'),(10,'isauro torres',123,'249'),(11,'perales',678,'329'),(12,'perales',123,'216'),(13,'perales',258,'329'),(14,'isauro torres',678,'336'),(15,'isauro torres',123,'238'),(16,'asdas',368,'335'),(17,'isauro torres',678,'335'),(18,'isauro torres',368,'85'),(19,'isauro torres',123,'304'),(23,'isauro torres',368,'249'),(24,'las golondrinas',493,'35'),(25,'las golondrinas',1232,'335'),(26,'ajsdk',123,'40'),(27,'las golondrinas',678,'40'),(28,'perales',493,'288'),(29,'los perales',678,'37'),(30,'isa',368,'42'),(31,'enrique blondell',2856,'37'),(32,'Damiano Albertini',1732,'35'),(33,'lautaro',350,'35'),(34,'asdas',678,'30'),(35,'enrique blondell',258,'326'),(36,'perales',123,'152'),(37,'isauro torres',678,'175'),(38,'golondrinas',493,'37'),(39,'las golondrinas',258,'329'),(40,'las golondrinas',123,'38'),(41,'8888',67575,'302'),(42,'8888',67575,'312'),(43,'las golondrinas',678,'338');
/*!40000 ALTER TABLE `direccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institucion_superior`
--

DROP TABLE IF EXISTS `institucion_superior`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `institucion_superior` (
  `id_institucion_superior` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_institucion_superior` varchar(150) NOT NULL,
  PRIMARY KEY (`id_institucion_superior`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institucion_superior`
--

LOCK TABLES `institucion_superior` WRITE;
/*!40000 ALTER TABLE `institucion_superior` DISABLE KEYS */;
INSERT INTO `institucion_superior` VALUES (1,'	Universidad de Chile	'),(2,'	Universidad de Santiago de Chile	'),(3,'	Universidad de Valparaiso	'),(4,'	Universidad de Antofagasta	'),(5,'	Universidad de La Serena	'),(6,'	Universidad del Bio-Bio	'),(7,'	Universidad de La Frontera	'),(8,'	Universidad de Magallanes	'),(9,'	Universidad de Talca	'),(10,'	Universidad de Atacama	'),(11,'	Universidad de Tarapacá	'),(12,'	Universidad Arturo Prat	'),(13,'	Universidad Metropolitana de Ciencias de la Educación	'),(14,'	Universidad de Playa Ancha de Ciencias de la Ecucación	'),(15,'	Universidad de Los Lagos	'),(16,'	Universidad Tecnológica Metropolitana	'),(17,'	Universidad de O\'higgins	'),(18,'	Universidad de Aysén	'),(19,'	Pontificia Universidad Católica de Chile	'),(20,'	Universidad de Concepción	'),(21,'	Universidad Técnica Federico Santa María	'),(22,'	Pontificia Universidad Católica de Valparaíso	'),(23,'	Universidad Austral de Chile	'),(24,'	Universidad Católica del Norte	'),(25,'	Universidad Católica del Maule	'),(26,'	Universidad Católica de la Santísima Concepción	'),(27,'	Universidad Católica de Temuco	'),(28,'	Universidad Gabriela Mistral	'),(29,'	Universidad Finis Terrae	'),(30,'	Universidad Diego Portales	'),(31,'	Universidad Central de Chile	'),(32,'	Universidad Bolivariana	'),(33,'	Universidad Pedro de Valdivia	'),(34,'	Universidad Mayor	'),(35,'	Universidad Academia de Humanismo Cristiano	'),(36,'	Universidad Santo Tomás	'),(37,'	Universidad La República	'),(38,'	Universidad Sek	'),(39,'	Universidad de Las Américas	'),(40,'	Universidad Andrés Bello	'),(41,'	Universidad de Viña del Mar	'),(42,'	Universidad Adolfo Ibañez	'),(43,'	Universidad Iberoamericana de Ciencias y Tecnología, UNICIT	'),(44,'	Universidad de Artes, Ciencias y Comunicación - UNIACC	'),(45,'	Universidad UCINF	'),(46,'	Universidad Autónoma de Chile	'),(47,'	Universidad de Los Andes	'),(48,'	Universidad Adventista de Chile	'),(49,'	Universidad San Sebastián	'),(50,'	Universidad de Arte y Ciencias Sociales ARCIS (Cierre Programado al 31/01/2021)	'),(51,'	Universidad Católica Cardenal Raúl Silva Henríquez	'),(52,'	Universidad del Desarrollo	'),(53,'	Universidad de Aconcagua	'),(54,'	Universidad del Pacífico	'),(55,'	Universidad Los Leones	'),(56,'	Universidad Bernardo O\'Higgins	'),(57,'	Universidad Tecnológica de Chile INACAP	'),(58,'	Universidad Miguel de Cervantes	'),(59,'	Universidad Alberto Hurtado	'),(60,'	Universidad Chileno Británica de Cultura (Cierre Programado al 01/01/2022)	'),(61,'	Instituto Profesional Agrario Adolfo Matthei	'),(62,'	Instituto Profesional INACAP o Instituto Profesional Instituto Nacional de Capacitación Profesional INACAP	'),(63,'	Instituto Profesional Libertador de Los Andes	'),(64,'	Instituto Profesional Instituto de Estudios Bancarios Guillermo Subercaseaux	'),(65,'	Instituto Profesional Escuela de Contadores Auditores de Santiago	'),(66,'	Instituto Profesional Providencia	'),(67,'	Instituto Profesional Chileno Británico de Cultura	'),(68,'	Instituto Profesional Adventista	'),(69,'	Instituto Profesional DUOC UC	'),(70,'	Instituto Profesional IPG	'),(71,'	Instituto Profesional Santo Tomás	'),(72,'	Instituto Profesional Instituto Superior de Artes y Ciencias de la Comunicación	'),(73,'	Instituto Profesional Alemán Wilhelm Von Humboldt	'),(74,'	Instituto Profesional Diego Portales	'),(75,'	Instituto Profesional de Chile	'),(76,'	Instituto Profesional La Araucana	'),(77,'	Instituto Profesional Escuela Moderna de Música	'),(78,'	Instituto Profesional de Ciencias y Artes INCACEA	'),(79,'	Instituto Profesional ESUCOMEX	'),(80,'	Instituto Profesional de ENAC	'),(81,'	Instituto Profesional EATRI Instituto Profesional	'),(82,'	Instituto Profesional de Los Angeles	'),(83,'	Instituto Profesional Dr. Virginio Gómez G.	'),(84,'	Instituto Profesional de Ciencias y Educación Helen Keller	'),(85,'	Instituto Profesional AIEP	'),(86,'	Instituto Profesional de Arte y Comunicación ARCOS	'),(87,'	Instituto Profesional Hogar Catequístico	'),(88,'	Instituto Profesional Latinoamericano de Comercio Exterior - IPLACEX	'),(89,'	Instituto Profesional Los Leones	'),(90,'	Instituto Profesional CIISA	'),(91,'	Instituto Profesional Los Lagos	'),(92,'	Instituto Profesional de Ciencias de la Computación Acuario Data	'),(93,'	Instituto Profesional del Comercio	'),(94,'	Instituto Profesional del Valle Central	'),(95,'	Instituto Profesional Carlos Casanueva	'),(96,'	Instituto Profesional Instituto Nacional del Fútbol	'),(97,'	Instituto Profesional Instituto Internacional de Artes Culinarias y Servicios	'),(98,'	Instituto Profesional PROJAZZ	'),(99,'	Instituto Profesional Chileno Norteamericano	'),(100,'	Instituto Profesional Escuela de Cine de Chile	'),(101,'	Instituto Profesional de Artes Escénicas Karen Connolly	'),(102,'	Instituto Profesional Mar Futuro	'),(103,'	Instituto Profesional Vertical Instituto Profesional	'),(104,'	Centro de Formación Técnica Instituto Central de Capacitación Educacional ICCE	'),(105,'	Centro de Formación Técnica de ENAC o Centro de Formación Técnica de los Establecimientos Nacionales de Educación Cáritas-Chile	'),(106,'	Centro de Formación Técnica DUOC UC (Cierre programado al 31/12/2018)	'),(107,'	Centro de Formación Técnica Centro de Enseñanza de Alta Costura Paulina Diard	'),(108,'	Centro de Formación Técnica Centro Tecnológico Superior  INFOMED	'),(109,'	Centro de Formación Técnica Instituto Superior Alemán de Comercio INSALCO	'),(110,'	Centro de Formación Técnica Juan Bohon	'),(111,'	Centro de Formación Técnica Barros Arana	'),(112,'	Centro de Formación Técnica Santo Tomás	'),(113,'	Centro de Formación Técnica Andrés Bello	'),(114,'	Centro de Formación Técnica Massachusetts	'),(115,'	Centro de Formación Técnica Los Lagos	'),(116,'	Centro de Formación Técnica Luis Alberto Vera	'),(117,'	Centro de Formación Técnica Escuela Superior de Administración de Negocios del Norte - ESANE DEL NORTE	'),(118,'	Centro de Formación Técnica Estudio Profesor Valero	'),(119,'	Centro de Formación Técnica CENCO	'),(120,'	Centro de Formación Técnica ALFA	'),(121,'	Centro de Formación Técnica PRODATA	'),(122,'	Centro de Formación Técnica Instituto Superior de Estudios Jurídicos CANON	'),(123,'	Centro de Formación Técnica IPROSEC	'),(124,'	Centro de Formación Técnica San Agustín de Talca	'),(125,'	Centro de Formación Técnica ICEL	'),(126,'	Centro de Formación Técnica Alpes	'),(127,'	Centro de Formación Técnica Instituto Técnológico de Chile - I.T.C.	'),(128,'	Centro de Formación Técnica EDUCAP	'),(129,'	Centro de Formación Técnica Cámara de Comercio de Santiago	'),(130,'	Centro de Formación Técnica LAPLACE o C.F.T.  de Estudios Superiores y Capacitación Profesional LAPLACE	'),(131,'	Centro de Formación Técnica INACAP	'),(132,'	Centro de Formación Técnica del Medio Ambiente	'),(133,'	Centro de Formación Técnica Lota-Arauco	'),(134,'	Centro de Formación Técnica CEDUC - UCN	'),(135,'	Centro de Formación Técnica UDA	'),(136,'	Centro de Formación Técnica CEITEC	'),(137,'	Centro de Formación Técnica PROANDES	'),(138,'	Centro de Formación Técnica Escuela de Artes Aplicadas Oficios de Fuego	'),(139,'	Centro de Formación Técnica de Tarapacá	'),(140,'	Centro de Formación Técnica U. Valpo o CFT UV	'),(141,'	Centro de Formación Técnica PROTEC	'),(142,'	Centro de Formación Técnica de la Industria Gráfica o CFT.  INGRAF	'),(143,'	Centro de Formación Técnica UCEVALPO	'),(144,'	Centro de Formación Técnica Teodoro Wickel Kluwen	'),(145,'	Centro de Formación Técnica PROFASOC	'),(146,'	Centro de Formación Técnica MANPOWER	'),(147,'	Centro de Formación Técnica Escuela Culinaria Francesa	'),(148,'	Centro de Formación Técnica FINNING	'),(149,'	Centro de Formación Técnica de la Región del Maule	'),(150,'	Centro de Formación Técnica de la Región de La Araucanía	');
/*!40000 ALTER TABLE `institucion_superior` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_acceso`
--

DROP TABLE IF EXISTS `nivel_acceso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `nivel_acceso` (
  `id_nivel` int(11) NOT NULL,
  `nivel_acceso` varchar(50) NOT NULL,
  PRIMARY KEY (`id_nivel`),
  UNIQUE KEY `nivel_acceso_UNIQUE` (`nivel_acceso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_acceso`
--

LOCK TABLES `nivel_acceso` WRITE;
/*!40000 ALTER TABLE `nivel_acceso` DISABLE KEYS */;
INSERT INTO `nivel_acceso` VALUES (1,'Administrador'),(4,'Ejecutivo Empresa'),(3,'Emprendedor'),(0,'Total'),(2,'Tutor');
/*!40000 ALTER TABLE `nivel_acceso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_emprendedor`
--

DROP TABLE IF EXISTS `nivel_emprendedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `nivel_emprendedor` (
  `id_nivel` int(11) NOT NULL AUTO_INCREMENT,
  `nivel_emprendedor` varchar(20) NOT NULL,
  PRIMARY KEY (`id_nivel`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_emprendedor`
--

LOCK TABLES `nivel_emprendedor` WRITE;
/*!40000 ALTER TABLE `nivel_emprendedor` DISABLE KEYS */;
INSERT INTO `nivel_emprendedor` VALUES (1,'Inicial'),(2,'Básico'),(3,'Intermedio'),(4,'Avanzado'),(5,'Experto');
/*!40000 ALTER TABLE `nivel_emprendedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ocupaciones`
--

DROP TABLE IF EXISTS `ocupaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ocupaciones` (
  `id_ocupacion` int(11) NOT NULL AUTO_INCREMENT,
  `ocupacion` varchar(150) NOT NULL,
  PRIMARY KEY (`id_ocupacion`)
) ENGINE=InnoDB AUTO_INCREMENT=262 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ocupaciones`
--

LOCK TABLES `ocupaciones` WRITE;
/*!40000 ALTER TABLE `ocupaciones` DISABLE KEYS */;
INSERT INTO `ocupaciones` VALUES (1,'	Abogado	'),(2,'	Académico	'),(3,'	Adjunto	'),(4,'	Administrador	'),(5,'	Administrativo	'),(6,'	Agrónomo	'),(7,'	Alergólogo / Alergista	'),(8,'	Almacenero / Almacenista	'),(9,'	Anatomista	'),(10,'	Anestesiólogo / Anestesista	'),(11,'	Antologista	'),(12,'	Antropólogo	'),(13,'	Arabista	'),(14,'	Archivero	'),(15,'	Arqueólogo	'),(16,'	Arquitecto	'),(17,'	Asesor	'),(18,'	Asistente	'),(19,'	Astrofísico	'),(20,'	Astrólogo	'),(21,'	Astrónomo	'),(22,'	Atleta	'),(23,'	ATS	'),(24,'	Autor	'),(25,'	Auxiliar	'),(26,'	Avicultor	'),(27,'	Bacteriólogo	'),(28,'	Bedel	'),(29,'	Bibliógrafo	'),(30,'	Bibliotecario	'),(31,'	Biofísico	'),(32,'	Biógrafo	'),(33,'	Biólogo	'),(34,'	Bioquímico	'),(35,'	Botánico	'),(36,'	Cancerólogo	'),(37,'	Cardiólogo	'),(38,'	Cartógrafo	'),(39,'	Castrador	'),(40,'	Catedrático	'),(41,'	Cirujano	'),(42,'	Citólogo	'),(43,'	Climatólogo	'),(44,'	Codirector	'),(45,'	Comadrón	'),(46,'	Consejero	'),(47,'	Conserje	'),(48,'	Conservador	'),(49,'	Coordinador	'),(50,'	Cosmógrafo	'),(51,'	Cosmólogo	'),(52,'	Criminalista	'),(53,'	Cronólogo	'),(54,'	Decano	'),(55,'	Decorador	'),(56,'	Defensor	'),(57,'	Delegado	'),(58,'	Delineante	'),(59,'	Demógrafo	'),(60,'	Dentista	'),(61,'	Dermatólogo	'),(62,'	Dibujante	'),(63,'	Directivo	'),(64,'	Director	'),(65,'	Dirigente	'),(66,'	Doctor	'),(67,'	Documentalista	'),(68,'	Dueño de Casa	'),(69,'	Ecólogo	'),(70,'	Economista	'),(71,'	Educador	'),(72,'	Egiptólogo	'),(73,'	Endocrinólogo	'),(74,'	Enfermero	'),(75,'	Enólogo	'),(76,'	Entomólogo	'),(77,'	Epidemiólogo	'),(78,'	Especialista	'),(79,'	Espeleólogo	'),(80,'	Estadista	'),(81,'	Estadístico	'),(82,'	Etimólogo / Etimologista	'),(83,'	Etnógrafo	'),(84,'	Etnólogo	'),(85,'	Etólogo	'),(86,'	Estudiante (Educación Superior)  '),(87,'  Estudiante (Enseñanza Media o Básica)  '),(88,'	Examinador	'),(89,'	Facultativo	'),(90,'	Farmacéutico	'),(91,'	Farmacólogo	'),(92,'	Filólogo	'),(93,'	Filósofo	'),(94,'	Fiscal	'),(95,'	Físico	'),(96,'	Fisiólogo 	'),(97,'	Fisioterapeuta	'),(98,'	Fonetista	'),(99,'	Foníatra	'),(100,'	Fonólogo	'),(101,'	Forense	'),(102,'	Fotógrafo	'),(103,'	Funcionario	'),(104,'	Gemólogo	'),(105,'	Genetista	'),(106,'	Geobotánica	'),(107,'	Geodesta	'),(108,'	Geofísico	'),(109,'	Geógrafo	'),(110,'	Geólogo	'),(111,'	Geomántico 	'),(112,'	Geómetra	'),(113,'	Geoquímica	'),(114,'	Gerente	'),(115,'	Geriatra	'),(116,'	Gerontólogo	'),(117,'	Gestor	'),(118,'	Grabador	'),(119,'	Graduado social	'),(120,'	Grafólogo	'),(121,'	Gramático	'),(122,'	Hematólogo	'),(123,'	Hepatólogo	'),(124,'	Hidrogeólogo	'),(125,'	Hidrógrafo	'),(126,'	Hidrólogo	'),(127,'	Higienista	'),(128,'	Hispanista	'),(129,'	Historiador	'),(130,'	Homeópata	'),(131,'	Informático	'),(132,'	Ingeniero	'),(133,'	Ingeniero técnico	'),(134,'	Inmunólogo	'),(135,'	Inspector	'),(136,'	Interino	'),(137,'	Interventor	'),(138,'	Investigador	'),(139,'	Jardinero	'),(140,'	Jefe	'),(141,'	Juez	'),(142,'	Latinista	'),(143,'	Lector	'),(144,'	Letrado	'),(145,'	Lexicógrafo	'),(146,'	Lexicólogo	'),(147,'	Licenciado	'),(148,'	Lingüista	'),(149,'	Logopeda	'),(150,'	Maestro	'),(151,'	Matemático	'),(152,'	Matrón	'),(153,'	Medico	'),(154,'	Meteorólogo	'),(155,'	Micólogo	'),(156,'	Microbiológico	'),(157,'	Microcirujano	'),(158,'	Mimógrafo	'),(159,'	Mineralogista	'),(160,'	Monitor	'),(161,'	Musicólogo	'),(162,'	Músico	'),(163,'	Naturópata	'),(164,'	Nefrólogo	'),(165,'	Neumólogo	'),(166,'	Neuroanatomista	'),(167,'	Neurobiólogo	'),(168,'	Neurocirujano	'),(169,'	Neuroembriólogo	'),(170,'	Neurofisiólogo	'),(171,'	Neurólogo	'),(172,'	Nutrólogo	'),(173,'	Oceanógrafo	'),(174,'	Odontólogo	'),(175,'	Oficial	'),(176,'	Oficinista	'),(177,'	Oftalmólogo	'),(178,'	Oncólogo	'),(179,'	Óptico	'),(180,'	Optometrista	'),(181,'	Ordenanza	'),(182,'	Orientador	'),(183,'	Ornitólogo	'),(184,'	Ortopédico / Ortopedista	'),(185,'	Osteólogo	'),(186,'	Osteópata	'),(187,'	Otorrinolaringólogo	'),(188,'	Paleobiólogo	'),(189,'	Paleobotánico	'),(190,'	Paleógrafo	'),(191,'	Paleólogo	'),(192,'	Paleontólogo	'),(193,'	Patólogo	'),(194,'	Pedagogo	'),(195,'	Pediatra	'),(196,'	Pedicuro	'),(197,'	Periodista	'),(198,'	Perito	'),(199,'	Piscicultor	'),(200,'	Podólogo	'),(201,'	Portero	'),(202,'	Prehistoriador	'),(203,'	Presidente	'),(204,'	Proctólogo	'),(205,'	Profesor	'),(206,'	Programador	'),(207,'	Protésico	'),(208,'	Proveedor	'),(209,'	Psicoanalista	'),(210,'	Psicólogo	'),(211,'	Psicofísico	'),(212,'	Psicopedagogo	'),(213,'	Psicoterapeuta	'),(214,'	Psiquiatra	'),(215,'	Publicista	'),(216,'	Publicitario	'),(217,'	Puericultor	'),(218,'	Químico	'),(219,'	Quiropráctico	'),(220,'	Radioastrónomo	'),(221,'	Radiofonista	'),(222,'	Radiólogo	'),(223,'	Radiotécnico	'),(224,'	Radiotelefonista	'),(225,'	Radiotelegrafista	'),(226,'	Radioterapeuta	'),(227,'	Rector	'),(228,'	Sanitario	'),(229,'	Secretario	'),(230,'	Sexólogo	'),(231,'	Sismólogo	'),(232,'	Sociólogo	'),(233,'	Subdelegado	'),(234,'	Subdirector	'),(235,'	Subsecretario	'),(236,'	Técnico	'),(237,'	Telefonista	'),(238,'	Teólogo	'),(239,'	Terapeuta	'),(240,'	Tocoginecólogo	'),(241,'	Tocólogo	'),(242,'	Toxicólogo	'),(243,'	Traductor	'),(244,'	Transcriptor	'),(245,'	Traumatólogo	'),(246,'	Tutor	'),(247,'	Trabajador Social	'),(248,'	Urólogo	'),(249,'	Veterinario	'),(250,'	Vicedecano	'),(251,'	Vicedirector	'),(252,'	Vicegerente	'),(253,'	Vicepresidente	'),(254,'	Vicerrector	'),(255,'	Vicesecretario	'),(256,'	Virólogo	'),(257,'	Viticultor	'),(258,'	Vulcanólogo	'),(259,'	Xilógrafo	'),(260,'	Zoólogo	'),(261,'	Zootécnico	');
/*!40000 ALTER TABLE `ocupaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paises`
--

DROP TABLE IF EXISTS `paises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `paises` (
  `id_pais` int(11) NOT NULL AUTO_INCREMENT,
  `abreviacion_iso` varchar(3) CHARACTER SET latin1 DEFAULT NULL,
  `nombre_pais` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id_pais`)
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paises`
--

LOCK TABLES `paises` WRITE;
/*!40000 ALTER TABLE `paises` DISABLE KEYS */;
INSERT INTO `paises` VALUES (1,'AF','Afganistán'),(2,'AX','Islas Gland'),(3,'AL','Albania'),(4,'DE','Alemania'),(5,'AD','Andorra'),(6,'AO','Angola'),(7,'AI','Anguilla'),(8,'AQ','Antártida'),(9,'AG','Antigua y Barbuda'),(10,'AN','Antillas Holandesas'),(11,'SA','Arabia Saudí'),(12,'DZ','Argelia'),(13,'AR','Argentina'),(14,'AM','Armenia'),(15,'AW','Aruba'),(16,'AU','Australia'),(17,'AT','Austria'),(18,'AZ','Azerbaiyán'),(19,'BS','Bahamas'),(20,'BH','Bahréin'),(21,'BD','Bangladesh'),(22,'BB','Barbados'),(23,'BY','Bielorrusia'),(24,'BE','Bélgica'),(25,'BZ','Belice'),(26,'BJ','Benin'),(27,'BM','Bermudas'),(28,'BT','Bhután'),(29,'BO','Bolivia'),(30,'BA','Bosnia y Herzegovina'),(31,'BW','Botsuana'),(32,'BV','Isla Bouvet'),(33,'BR','Brasil'),(34,'BN','Brunéi'),(35,'BG','Bulgaria'),(36,'BF','Burkina Faso'),(37,'BI','Burundi'),(38,'CV','Cabo Verde'),(39,'KY','Islas Caimán'),(40,'KH','Camboya'),(41,'CM','Camerún'),(42,'CA','Canadá'),(43,'CF','República Centroafricana'),(44,'TD','Chad'),(45,'CZ','República Checa'),(46,'CL','Chile'),(47,'CN','China'),(48,'CY','Chipre'),(49,'CX','Isla de Navidad'),(50,'VA','Ciudad del Vaticano'),(51,'CC','Islas Cocos'),(52,'CO','Colombia'),(53,'KM','Comoras'),(54,'CD','República Democrática del Congo'),(55,'CG','Congo'),(56,'CK','Islas Cook'),(57,'KP','Corea del Norte'),(58,'KR','Corea del Sur'),(59,'CI','Costa de Marfil'),(60,'CR','Costa Rica'),(61,'HR','Croacia'),(62,'CU','Cuba'),(63,'DK','Dinamarca'),(64,'DM','Dominica'),(65,'DO','República Dominicana'),(66,'EC','Ecuador'),(67,'EG','Egipto'),(68,'SV','El Salvador'),(69,'AE','Emiratos Árabes Unidos'),(70,'ER','Eritrea'),(71,'SK','Eslovaquia'),(72,'SI','Eslovenia'),(73,'ES','España'),(74,'UM','Islas ultramarinas de Estados Unidos'),(75,'US','Estados Unidos'),(76,'EE','Estonia'),(77,'ET','Etiopía'),(78,'FO','Islas Feroe'),(79,'PH','Filipinas'),(80,'FI','Finlandia'),(81,'FJ','Fiyi'),(82,'FR','Francia'),(83,'GA','Gabón'),(84,'GM','Gambia'),(85,'GE','Georgia'),(86,'GS','Islas Georgias del Sur y Sandwich del Sur'),(87,'GH','Ghana'),(88,'GI','Gibraltar'),(89,'GD','Granada'),(90,'GR','Grecia'),(91,'GL','Groenlandia'),(92,'GP','Guadalupe'),(93,'GU','Guam'),(94,'GT','Guatemala'),(95,'GF','Guayana Francesa'),(96,'GN','Guinea'),(97,'GQ','Guinea Ecuatorial'),(98,'GW','Guinea-Bissau'),(99,'GY','Guyana'),(100,'HT','Haití'),(101,'HM','Islas Heard y McDonald'),(102,'HN','Honduras'),(103,'HK','Hong Kong'),(104,'HU','Hungría'),(105,'IN','India'),(106,'ID','Indonesia'),(107,'IR','Irán'),(108,'IQ','Iraq'),(109,'IE','Irlanda'),(110,'IS','Islandia'),(111,'IL','Israel'),(112,'IT','Italia'),(113,'JM','Jamaica'),(114,'JP','Japón'),(115,'JO','Jordania'),(116,'KZ','Kazajstán'),(117,'KE','Kenia'),(118,'KG','Kirguistán'),(119,'KI','Kiribati'),(120,'KW','Kuwait'),(121,'LA','Laos'),(122,'LS','Lesotho'),(123,'LV','Letonia'),(124,'LB','Líbano'),(125,'LR','Liberia'),(126,'LY','Libia'),(127,'LI','Liechtenstein'),(128,'LT','Lituania'),(129,'LU','Luxemburgo'),(130,'MO','Macao'),(131,'MK','ARY Macedonia'),(132,'MG','Madagascar'),(133,'MY','Malasia'),(134,'MW','Malawi'),(135,'MV','Maldivas'),(136,'ML','Malí'),(137,'MT','Malta'),(138,'FK','Islas Malvinas'),(139,'MP','Islas Marianas del Norte'),(140,'MA','Marruecos'),(141,'MH','Islas Marshall'),(142,'MQ','Martinica'),(143,'MU','Mauricio'),(144,'MR','Mauritania'),(145,'YT','Mayotte'),(146,'MX','México'),(147,'FM','Micronesia'),(148,'MD','Moldavia'),(149,'MC','Mónaco'),(150,'MN','Mongolia'),(151,'MS','Montserrat'),(152,'MZ','Mozambique'),(153,'MM','Myanmar'),(154,'NA','Namibia'),(155,'NR','Nauru'),(156,'NP','Nepal'),(157,'NI','Nicaragua'),(158,'NE','Níger'),(159,'NG','Nigeria'),(160,'NU','Niue'),(161,'NF','Isla Norfolk'),(162,'NO','Noruega'),(163,'NC','Nueva Caledonia'),(164,'NZ','Nueva Zelanda'),(165,'OM','Omán'),(166,'NL','Países Bajos'),(167,'PK','Pakistán'),(168,'PW','Palau'),(169,'PS','Palestina'),(170,'PA','Panamá'),(171,'PG','Papúa Nueva Guinea'),(172,'PY','Paraguay'),(173,'PE','Perú'),(174,'PN','Islas Pitcairn'),(175,'PF','Polinesia Francesa'),(176,'PL','Polonia'),(177,'PT','Portugal'),(178,'PR','Puerto Rico'),(179,'QA','Qatar'),(180,'GB','Reino Unido'),(181,'RE','Reunión'),(182,'RW','Ruanda'),(183,'RO','Rumania'),(184,'RU','Rusia'),(185,'EH','Sahara Occidental'),(186,'SB','Islas Salomón'),(187,'WS','Samoa'),(188,'AS','Samoa Americana'),(189,'KN','San Cristóbal y Nevis'),(190,'SM','San Marino'),(191,'PM','San Pedro y Miquelón'),(192,'VC','San Vicente y las Granadinas'),(193,'SH','Santa Helena'),(194,'LC','Santa Lucía'),(195,'ST','Santo Tomé y Príncipe'),(196,'SN','Senegal'),(197,'CS','Serbia y Montenegro'),(198,'SC','Seychelles'),(199,'SL','Sierra Leona'),(200,'SG','Singapur'),(201,'SY','Siria'),(202,'SO','Somalia'),(203,'LK','Sri Lanka'),(204,'SZ','Suazilandia'),(205,'ZA','Sudáfrica'),(206,'SD','Sudán'),(207,'SE','Suecia'),(208,'CH','Suiza'),(209,'SR','Surinam'),(210,'SJ','Svalbard y Jan Mayen'),(211,'TH','Tailandia'),(212,'TW','Taiwán'),(213,'TZ','Tanzania'),(214,'TJ','Tayikistán'),(215,'IO','Territorio Británico del Océano Índico'),(216,'TF','Territorios Australes Franceses'),(217,'TL','Timor Oriental'),(218,'TG','Togo'),(219,'TK','Tokelau'),(220,'TO','Tonga'),(221,'TT','Trinidad y Tobago'),(222,'TN','Túnez'),(223,'TC','Islas Turcas y Caicos'),(224,'TM','Turkmenistán'),(225,'TR','Turquía'),(226,'TV','Tuvalu'),(227,'UA','Ucrania'),(228,'UG','Uganda'),(229,'UY','Uruguay'),(230,'UZ','Uzbekistán'),(231,'VU','Vanuatu'),(232,'VE','Venezuela'),(233,'VN','Vietnam'),(234,'VG','Islas Vírgenes Británicas'),(235,'VI','Islas Vírgenes de los Estados Unidos'),(236,'WF','Wallis y Futuna'),(237,'YE','Yemen'),(238,'DJ','Yibuti'),(239,'ZM','Zambia'),(240,'ZW','Zimbabue');
/*!40000 ALTER TABLE `paises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provincias`
--

DROP TABLE IF EXISTS `provincias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `provincias` (
  `provincia_id` int(11) NOT NULL AUTO_INCREMENT,
  `provincia_nombre` varchar(64) CHARACTER SET utf8 NOT NULL,
  `region_id` int(11) NOT NULL,
  PRIMARY KEY (`provincia_id`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provincias`
--

LOCK TABLES `provincias` WRITE;
/*!40000 ALTER TABLE `provincias` DISABLE KEYS */;
INSERT INTO `provincias` VALUES (1,'Arica',1),(2,'Parinacota',1),(3,'Iquique',2),(4,'El Tamarugal',2),(5,'Antofagasta',3),(6,'El Loa',3),(7,'Tocopilla',3),(8,'Chañaral',4),(9,'Copiapó',4),(10,'Huasco',4),(11,'Choapa',5),(12,'Elqui',5),(13,'Limarí',5),(14,'Isla de Pascua',6),(15,'Los Andes',6),(16,'Petorca',6),(17,'Quillota',6),(18,'San Antonio',6),(19,'San Felipe de Aconcagua',6),(20,'Valparaiso',6),(21,'Chacabuco',7),(22,'Cordillera',7),(23,'Maipo',7),(24,'Melipilla',7),(25,'Santiago',7),(26,'Talagante',7),(27,'Cachapoal',8),(28,'Cardenal Caro',8),(29,'Colchagua',8),(30,'Cauquenes',9),(31,'Curicó',9),(32,'Linares',9),(33,'Talca',9),(34,'Arauco',10),(35,'Bio Bío',10),(36,'Concepción',10),(54,'Punilla',16),(38,'Cautín',11),(39,'Malleco',11),(40,'Valdivia',12),(41,'Ranco',12),(42,'Chiloé',13),(43,'Llanquihue',13),(44,'Osorno',13),(45,'Palena',13),(46,'Aisén',14),(47,'Capitán Prat',14),(48,'Coihaique',14),(49,'General Carrera',14),(50,'Antártica Chilena',15),(51,'Magallanes',15),(52,'Tierra del Fuego',15),(53,'Última Esperanza',15),(55,'Itata',16),(56,'Diguillin',16);
/*!40000 ALTER TABLE `provincias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regiones`
--

DROP TABLE IF EXISTS `regiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `regiones` (
  `region_id` int(11) NOT NULL AUTO_INCREMENT,
  `region_nombre` varchar(64) NOT NULL,
  `region_ordinal` varchar(4) NOT NULL,
  PRIMARY KEY (`region_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regiones`
--

LOCK TABLES `regiones` WRITE;
/*!40000 ALTER TABLE `regiones` DISABLE KEYS */;
INSERT INTO `regiones` VALUES (1,'Arica y Parinacota','XV'),(2,'Tarapacá','I'),(3,'Antofagasta','II'),(4,'Atacama','III'),(5,'Coquimbo','IV'),(6,'Valparaiso','V'),(7,'Metropolitana de Santiago','RM'),(8,'Libertador General Bernardo O\'Higgins','VI'),(9,'Maule','VII'),(10,'Biobío','VIII'),(11,'La Araucanía','IX'),(12,'Los Ríos','XIV'),(13,'Los Lagos','X'),(14,'Aisén del General Carlos Ibáñez del Campo','XI'),(15,'Magallanes y de la Antártica Chilena','XII'),(16,'Ñuble','XVI');
/*!40000 ALTER TABLE `regiones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usuario` (
  `rut` int(20) NOT NULL,
  `correo_electronico` varchar(100) NOT NULL,
  `password` varchar(30) NOT NULL,
  `id_nivel_acceso` varchar(45) NOT NULL,
  PRIMARY KEY (`rut`),
  UNIQUE KEY `rut_UNIQUE` (`rut`),
  UNIQUE KEY `correo_electronico_UNIQUE` (`correo_electronico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (12345678,'cop009@alumnos.ucn.cl','1234','3'),(180122591,'yo@prueba.cl','123','0'),(180122592,'admin@prueba.cl','123','1'),(180122593,'emprende@prueba.cl','123','3');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-14 20:32:43
