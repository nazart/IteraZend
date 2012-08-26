/*
SQLyog Enterprise - MySQL GUI v8.02 RC
MySQL - 5.5.27 : Database - itera
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`itera` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `itera`;

/*Table structure for table `area` */

DROP TABLE IF EXISTS `area`;

CREATE TABLE `area` (
  `IdArea` int(11) NOT NULL AUTO_INCREMENT,
  `NombreArea` char(200) DEFAULT NULL,
  `ImagenArea` char(100) DEFAULT NULL,
  `DescripcionCortaArea` char(100) DEFAULT NULL,
  `SlugArea` char(200) DEFAULT NULL,
  `DescripcionArea` text,
  PRIMARY KEY (`IdArea`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `area` */

insert  into `area`(`IdArea`,`NombreArea`,`ImagenArea`,`DescripcionCortaArea`,`SlugArea`,`DescripcionArea`) values (1,'Hardware y Infraestructura','1.png','sadasdasd asdasdasd','area1','asdasdasasdasdasdasd\r\nasdasdasd\r\nasd\r\na\r\nsda\r\nsd\r\nasd\r\nsad'),(2,' Seguridad y Proteccion de Datos','2.jpg','asdasdasd asdasd','area2','asdasdasasdasdasdasd\r\nasdasdasd\r\nasd\r\na\r\nsda\r\nsd\r\nasd\r\nsad'),(3,'Gestion Service & HelpDesk','3.jpg','asdads asdasdas','area3','asdasdasasdasdasdasd\r\nasdasdasd\r\nasd\r\na\r\nsda\r\nsd\r\nasd\r\nsad');

/*Table structure for table `banner` */

DROP TABLE IF EXISTS `banner`;

CREATE TABLE `banner` (
  `IdBanner` int(11) NOT NULL AUTO_INCREMENT,
  `NombreBanner` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DescripcionBanner` text COLLATE utf8_unicode_ci,
  `ImagenBanner` varchar(600) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UrlBanner` varchar(600) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OrdenBanner` tinyint(4) DEFAULT NULL,
  `EstadoBanner` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`IdBanner`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `banner` */

insert  into `banner`(`IdBanner`,`NombreBanner`,`DescripcionBanner`,`ImagenBanner`,`UrlBanner`,`OrdenBanner`,`EstadoBanner`) values (6,'uno','asdadasd','esetmac.jpg',NULL,1,1),(7,'dos',NULL,'essetendpoint.png',NULL,2,1);

/*Table structure for table `categoriaproducto` */

DROP TABLE IF EXISTS `categoriaproducto`;

CREATE TABLE `categoriaproducto` (
  `idCategoriaProducto` int(11) NOT NULL AUTO_INCREMENT,
  `NombreCategoriaProducto` char(200) DEFAULT NULL,
  `flagActivoCategoriaProducto` bigint(1) DEFAULT NULL,
  `IdArea` int(11) DEFAULT NULL,
  `SlugCategoriaProducto` char(200) DEFAULT NULL,
  PRIMARY KEY (`idCategoriaProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `categoriaproducto` */

insert  into `categoriaproducto`(`idCategoriaProducto`,`NombreCategoriaProducto`,`flagActivoCategoriaProducto`,`IdArea`,`SlugCategoriaProducto`) values (1,'Servidores',1,1,'servidores'),(2,'Storage',1,1,'storage'),(3,'Desktop',1,1,'desktop'),(4,'Portatiles',1,1,'portatiles'),(5,'Impresoras',1,1,'impresoras'),(6,'Comunicaciones',1,1,'comunicaciones'),(7,'Accesorios',1,1,'accesorios'),(8,NULL,NULL,NULL,NULL);

/*Table structure for table `categoriasoluciones` */

DROP TABLE IF EXISTS `categoriasoluciones`;

CREATE TABLE `categoriasoluciones` (
  `IdCategoriaSoluciones` int(11) NOT NULL AUTO_INCREMENT,
  `NombreCategoriaSoluciones` char(200) DEFAULT NULL,
  `DescripcionCategoriaSoluciones` text,
  `SlugCategoriaSolucion` char(200) DEFAULT NULL,
  `ImagenCategoriaSoluciones` char(200) DEFAULT NULL,
  PRIMARY KEY (`IdCategoriaSoluciones`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `categoriasoluciones` */

insert  into `categoriasoluciones`(`IdCategoriaSoluciones`,`NombreCategoriaSoluciones`,`DescripcionCategoriaSoluciones`,`SlugCategoriaSolucion`,`ImagenCategoriaSoluciones`) values (1,'Backup y Data Management',NULL,'categoria-solucion-uno','imagenuno.jpg'),(2,'Infraestructura IT',NULL,'categoria-solucion-dos','imagendos.jpg'),(3,'Seguridad Web y Correo',NULL,'categoria-solucion-tres','imagentres.jpg'),(4,'Seguridad Amenazas y Endpoint',NULL,NULL,NULL),(5,'Service Management & Helpdesk',NULL,NULL,NULL);

/*Table structure for table `contacto` */

DROP TABLE IF EXISTS `contacto`;

CREATE TABLE `contacto` (
  `IdContacto` int(11) NOT NULL AUTO_INCREMENT,
  `NombresContacto` char(200) DEFAULT NULL,
  `TelefonoContacto` char(20) DEFAULT NULL,
  `Email` char(200) DEFAULT NULL,
  `FechaRegistro` datetime DEFAULT NULL,
  `Ip` char(20) DEFAULT NULL,
  PRIMARY KEY (`IdContacto`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

/*Data for the table `contacto` */

insert  into `contacto`(`IdContacto`,`NombresContacto`,`TelefonoContacto`,`Email`,`FechaRegistro`,`Ip`) values (1,'asdsad','asdasd','na.zar.tj@gmail.com','2012-07-12 14:53:49','127.0.0.1'),(2,'asdasd','asda','na.zar.tj@gmail.com','2012-07-12 14:17:50','127.0.0.1'),(3,'asdasd','asdasd asdasd','na.zar.tj@gmail.com','2012-07-12 14:24:52','127.0.0.1'),(4,'asdsd','asdasd','na.zar.tj@gmail.com','2012-07-12 14:29:54','127.0.0.1'),(5,'na','asdsd','na.zar.tj@gmail.com','2012-07-12 14:38:54','127.0.0.1'),(6,'adsda','asdasd','na.zar.tj@gmail.com','2012-07-12 14:10:55','127.0.0.1'),(7,'asdasd','asdasd','na.zar.tj@gmail.com','2012-07-12 14:58:59','127.0.0.1'),(8,'naasdad','asdasd','na.zar.tj@gmail.com','2012-07-12 15:12:00','127.0.0.1'),(9,'asdasd','asdasd','na.zar.tj@gmail.com','2012-07-12 15:29:00','127.0.0.1'),(10,'asdasd','asdasd','na.zar.tj@gmail.com','2012-07-12 15:42:00','127.0.0.1'),(11,'naasdad','asdasd','na.zar.tj@gmail.com','2012-07-12 15:11:01','127.0.0.1'),(12,'asdasd','asdad','na.zar.tj@gmail.com','2012-07-12 15:23:01','127.0.0.1'),(13,'asdasd','asdasd','na.zar.tj@gmail.com','2012-07-12 15:29:02','127.0.0.1'),(14,'naasdad','asdasd','na.zar.tj@gmail.com','2012-07-12 15:56:02','127.0.0.1'),(15,'asdasd','asdasd','na.zar.tj@gmail.com','2012-07-12 15:46:19','127.0.0.1'),(16,'asdasdnasdds','1231231123','nazartj@gmail.com.pe','2012-07-14 20:33:22','127.0.0.1'),(17,'asdasd','2412234234','na.zar.tj@gmail.com','2012-07-14 22:03:20','127.0.0.1'),(18,'asdasd','2412234234','na.zar.tj@gmail.com','2012-07-14 22:18:21','127.0.0.1'),(19,'asdasd','2412234234','na.zar.tj@gmail.com','2012-07-14 22:04:22','127.0.0.1'),(20,'asdasd','2412234234','na.zar.tj@gmail.com','2012-07-14 22:06:26','127.0.0.1'),(21,'adasd','782323234','na.zar.tj@gmail.com','2012-07-14 22:19:29','127.0.0.1'),(22,'adasd','782323234','na.zar.tj@gmail.com','2012-07-14 22:29:30','127.0.0.1'),(23,'adasd','782323234','na.zar.tj@gmail.com','2012-07-14 22:36:38','127.0.0.1'),(24,'asdasdas','4353453543','na.zar.tj@gmail.com','2012-07-15 09:12:13','127.0.0.1'),(25,'nazart jara huaman','98098080','na.zar.tj@gmail.com','2012-07-15 09:12:15','127.0.0.1');

/*Table structure for table `core_session` */

DROP TABLE IF EXISTS `core_session`;

CREATE TABLE `core_session` (
  `Id` varchar(32) NOT NULL,
  `save_path` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL DEFAULT '',
  `Modified` int(11) DEFAULT NULL,
  `LifeTime` int(11) DEFAULT NULL,
  `Data` text,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `core_session` */

insert  into `core_session`(`Id`,`save_path`,`name`,`Modified`,`LifeTime`,`Data`) values ('1afrc0qhjj76k3b06ttjih05b7','','',1345937504,1440,'default|a:1:{s:10:\"cotizacion\";N;}'),('1ukn57oklcqpkr97r09i3nt996','','',1345881766,1440,'default|a:1:{s:10:\"cotizacion\";N;}'),('34200srd7d8dhb6arr2deql1j0','','',1345919654,1440,'default|a:1:{s:10:\"cotizacion\";N;}'),('36qgj1r6qj9ci7uu17e1sg0as6','','',1345021461,1440,''),('5d34hg4h0ikcs5i1i50fut76l2','','',1345881284,1440,'default|a:1:{s:10:\"cotizacion\";N;}'),('64k59bmvflg1fd2ncajfec6c41','','',1345001448,1440,''),('7urbtpage3jghd582i9t2qfhe5','','',1345920665,1440,'default|a:1:{s:10:\"cotizacion\";N;}'),('8v1ru806ik1gc295p6628tmjf3','','',1345021503,1440,''),('ba9efeo0ndd8k8kgnchdnkig33','','',1345918329,1440,'default|a:1:{s:10:\"cotizacion\";N;}'),('bdelsakp2bf3bmd8ffnqu078n6','','',1345880493,1440,'default|a:1:{s:10:\"cotizacion\";N;}'),('btint9f6ok8i6l44gdh8h3kbl7','','',1345938559,1440,'default|a:1:{s:10:\"cotizacion\";N;}'),('fkn1pteu2hgv1uvqab77u5hgk7','','',1345021413,1440,''),('h34ood7cr7ugldpsrnjb1jm4a4','','',1345920763,1440,'default|a:1:{s:10:\"cotizacion\";N;}'),('hmb590dnm3rbt8ma7noch0o4r0','','',1345075014,1440,'default|a:1:{s:10:\"cotizacion\";N;}'),('ht5ubjb9j8v61jnmuqfl3p2nu0','','',1345021408,1440,''),('ihqm0q28k9mhhb223bajnb9ct4','','',1345925292,1440,'default|a:1:{s:10:\"cotizacion\";N;}'),('n0vggkk809lajjer5h75a8mme4','','',1345018811,1440,''),('q9j46tumluphano28s9t2ci1s0','','',1345876600,1440,'default|a:1:{s:10:\"cotizacion\";N;}'),('r1p8smotb8evuj22rdjo20rkp0','','',1345936700,1440,'default|a:1:{s:10:\"cotizacion\";N;}'),('s38v6qubs772h6rse94acce170','','',1345021456,1440,''),('su1nquvspkr3k7hk1ks7h4scv4','','',1345007142,1440,''),('vcfheau6188536gkfgcp24i2n4','','',1345937528,1440,'default|a:1:{s:10:\"cotizacion\";N;}');

/*Table structure for table `detalleslug` */

DROP TABLE IF EXISTS `detalleslug`;

CREATE TABLE `detalleslug` (
  `IdDetalleSlug` int(11) NOT NULL AUTO_INCREMENT,
  `IdProducto` int(11) DEFAULT NULL,
  `IdSlug` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdDetalleSlug`)
) ENGINE=InnoDB AUTO_INCREMENT=415 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `detalleslug` */

insert  into `detalleslug`(`IdDetalleSlug`,`IdProducto`,`IdSlug`) values (411,2,44),(412,2,46),(413,1,45),(414,1,57);

/*Table structure for table `ftx_utf8` */

DROP TABLE IF EXISTS `ftx_utf8`;

CREATE TABLE `ftx_utf8` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `col1` varchar(45) NOT NULL,
  `col2` text NOT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `FTX` (`col1`,`col2`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `ftx_utf8` */

insert  into `ftx_utf8`(`id`,`col1`,`col2`) values (1,'proliant microserver','proliant microserver'),(2,'proliant','proliant');

/*Table structure for table `imagenproducto` */

DROP TABLE IF EXISTS `imagenproducto`;

CREATE TABLE `imagenproducto` (
  `IdImagenProducto` int(11) NOT NULL AUTO_INCREMENT,
  `NombreImagenProducto` char(200) DEFAULT NULL,
  `PrioridadImagenProducto` int(11) DEFAULT NULL,
  `IdProducto` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdImagenProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `imagenproducto` */

insert  into `imagenproducto`(`IdImagenProducto`,`NombreImagenProducto`,`PrioridadImagenProducto`,`IdProducto`) values (1,'imagenuno.jpg',1,1),(2,'imagendos.jpg',2,1),(3,'imagentres.jpg',3,1);

/*Table structure for table `marca` */

DROP TABLE IF EXISTS `marca`;

CREATE TABLE `marca` (
  `IdMarca` int(11) NOT NULL AUTO_INCREMENT,
  `NombreMarca` char(200) DEFAULT NULL,
  `SlugMarca` char(200) DEFAULT NULL,
  `ImagenMarca` char(200) DEFAULT NULL,
  PRIMARY KEY (`IdMarca`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `marca` */

insert  into `marca`(`IdMarca`,`NombreMarca`,`SlugMarca`,`ImagenMarca`) values (1,'HP','hp','1.jpg'),(2,'IBM','ibm','2.jpg'),(3,'EMC','emc','3.jpg'),(4,'LENOVO','lenovo','4.jpg'),(5,'TOSHIBA','toshiba','5.jpg'),(6,'OKIDATA','okidata','6.jpg'),(7,'CISCO','cisco','7.jpg'),(8,'FORTY','forty','8.jpg'),(9,'ESET','eset','9.jpg');

/*Table structure for table `paginainterna` */

DROP TABLE IF EXISTS `paginainterna`;

CREATE TABLE `paginainterna` (
  `IdPaginaInterna` int(11) NOT NULL AUTO_INCREMENT,
  `NombrePaginaInterna` char(200) DEFAULT NULL,
  `ContenidoPaginaInterna` text,
  `UrlPaginaInterna` char(200) DEFAULT NULL,
  PRIMARY KEY (`IdPaginaInterna`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `paginainterna` */

/*Table structure for table `producto` */

DROP TABLE IF EXISTS `producto`;

CREATE TABLE `producto` (
  `IdProducto` int(11) NOT NULL AUTO_INCREMENT,
  `NombreProducto` char(150) DEFAULT NULL,
  `IdArea` int(11) DEFAULT NULL,
  `IdCategoriaProducto` int(11) DEFAULT NULL,
  `IdSubCategoriaProducto` int(11) DEFAULT NULL,
  `PrecioProducto` float DEFAULT NULL,
  `DescricionCortaProducto` char(50) DEFAULT NULL,
  `SlugProducto` char(150) DEFAULT NULL,
  `IdMarca` int(11) DEFAULT NULL,
  `DescricionProducto` text,
  `ImagenProducto` char(200) DEFAULT NULL,
  PRIMARY KEY (`IdProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

/*Data for the table `producto` */

insert  into `producto`(`IdProducto`,`NombreProducto`,`IdArea`,`IdCategoriaProducto`,`IdSubCategoriaProducto`,`PrecioProducto`,`DescricionCortaProducto`,`SlugProducto`,`IdMarca`,`DescricionProducto`,`ImagenProducto`) values (17,'IBM System x3500 M4',1,1,2,NULL,'Este servidor de torre de dos procesadores y de al',NULL,1,'CaracterÃ­sticas principales\r\nOfrece funciones de escalabilidad flexibles diseÃ±adas para crecer al ritmo de sus necesidades empresariales\r\nOfrece una gran capacidad de almacenamiento para proteger sus datos\r\nFÃ¡cil instalaciÃ³n, uso y gestiÃ³n a largas distancias.\r\nFunciones sÃ³lidas que se adaptan al crecimiento\r\nEl sistema IBMÂ® System x3500 M4, un servidor de torre de dos procesadores y de alto rendimiento, puede ofrecerle la escalabilidad, la fiabilidad de rendimiento y la optimizaciÃ³n de la eficiencia que requieren sus aplicaciones empresariales mÃ¡s importantes. Empiece con el sistema bÃ¡sico y actualice a medida que cambien sus necesidades empresariales sin poner en peligro las inversiones existentes. Al virtualizar su infraestructura informÃ¡tica en un servidor podrÃ¡ acceder a un servidor muy potente con un gran espacio de almacenamiento, reduciendo al mismo tiempo los costes de TI.\r\nTriplican la capacidad de almacenamiento\r\nEl sistema x3500 M4 admite la Ãºltima microarquitectura IntelÂ®, que ofrece mejoras de rendimiento inteligente capaces de adaptarse a su entorno de cargas de trabajo. El sistema x3500 M4 ofrece el triple de capacidad de almacenamiento en comparaciÃ³n con su antecesor x3500 M3, sin necesidad de adquirir dispositivos externos. Un diseÃ±o flexible y un servidor consolidado que ayudan a optimizar las cargas de trabajo mÃ¡s intensivas y a mejorar la capacidad de utilizaciÃ³n, lo que convierte al sistema x3500 M4 en una opciÃ³n ideal para las pequeÃ±as y medianas empresas (PYMES).\r\nAlgunas configuraciones del sistema x3500 M4 forman parte de IBM Express Portfolio, diseÃ±ado para solucionar las necesidades de las PYMES. Los modelos Express, fÃ¡ciles de gestionar, varÃ­an de un paÃ­s a otro.\r\nCaracterÃ­sticas del producto\r\nRendimiento de procesador inteligente que le ayuda a sacar mÃ¡s partido a su potencia informÃ¡tica cuando lo necesite; hasta 16 cores\r\nExcelente capacidad de almacenamiento flexible y varias opciones de almacenamiento\r\nLas completas herramientas de gestiÃ³n de sistemas ayudan a reducir los tiempos de inactividad, disminuir los costes y mejorar la productividad a travÃ©s de avanzadas funciones de gestiÃ³n de servidores\r\nCompatibilidad con unidades de estado sÃ³lido (SSD) o unidades de disco duro (HDD) Serial Attached SCSI (SAS) o Serial Advanced Technology Attachment (SATA)\r\nOfrece flexibilidad para utilizar adaptadores Peripheral Component Interconnect Extended (PCI-X) heredados mientras se realiza la transiciÃ³n al estÃ¡ndar PCI Express (PCIe)\r\nResumen del hardware\r\nTorre de 5U con posibilidad de montaje en bastidor opcional\r\nHasta dos procesadores IntelÂ® XeonÂ® de la serie E5-2600\r\nHasta 1600 MHz de velocidad de memoria\r\nHasta ocho ranuras de expansiÃ³n PCIe; seis ranuras PCIe de serie, ademÃ¡s de dos ranuras PCIe adicionales cuando el segundo procesador estÃ¡ ocupado. Ranura PCI-X opcional disponible a travÃ©s del kit de conversiÃ³n de intercalador\r\nHasta 32 terabyes (TB) de unidades SAS/SATA hot-swap de 2,5\" (se requieren opciones de actualizaciÃ³n de unidad de disco duro) o 24 TB de unidades SAS/SATA hot-swap o simple-swap de 3,5\"\r\nArray redundante de discos independientes (RAID)-0, -1, -10 por hardware a 6 gigabits por segundo (Gbps) integrado',NULL),(18,'IBM System x3300 M4',1,1,2,NULL,'El sistema IBM System x3300 M4 ofrece un equilibri',NULL,NULL,NULL,NULL),(19,'IBM System x3100 M4',1,1,2,NULL,'El x3100 M4 es una torre con una excelente relaciÃ',NULL,NULL,NULL,NULL),(20,'IBM System x3200 M3',1,1,2,NULL,'IBM System x3200 M3 ofrece mejores dispositivos y',NULL,NULL,NULL,NULL),(21,'IBM System x3400 M3',1,1,2,NULL,'El x3400 M3 ofrece flexibilidad, fiabilidad y segu',NULL,NULL,NULL,NULL),(22,'IBM System x3500 M3',1,1,2,NULL,'El sistema x3500 M3 proporciona una excelente esca',NULL,NULL,NULL,NULL),(23,'IBM System x3650 M4',1,1,1,NULL,'Este potente servidor combina un excelente tiempo',NULL,NULL,NULL,NULL),(24,'IBM System x3550 M4',1,1,1,NULL,'Este potente servidor combina un excelente tiempo',NULL,NULL,NULL,NULL),(25,'IBM System x3250 M4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `productodestacadomarca` */

DROP TABLE IF EXISTS `productodestacadomarca`;

CREATE TABLE `productodestacadomarca` (
  `IdProductosDestacados` int(11) NOT NULL AUTO_INCREMENT,
  `IdProducto` int(11) DEFAULT NULL,
  `IdMarca` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdProductosDestacados`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `productodestacadomarca` */

insert  into `productodestacadomarca`(`IdProductosDestacados`,`IdProducto`,`IdMarca`) values (1,1,1),(2,2,2),(3,3,1);

/*Table structure for table `slug` */

DROP TABLE IF EXISTS `slug`;

CREATE TABLE `slug` (
  `IdSlug` int(11) NOT NULL AUTO_INCREMENT,
  `NombreSlug` char(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`IdSlug`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `slug` */

insert  into `slug`(`IdSlug`,`NombreSlug`) values (44,'azucar'),(45,'caramelo'),(46,'azucarado'),(47,'acaramelado');

/*Table structure for table `soluciones` */

DROP TABLE IF EXISTS `soluciones`;

CREATE TABLE `soluciones` (
  `IdSoluciones` int(11) NOT NULL AUTO_INCREMENT,
  `NombreSoluciones` char(200) DEFAULT NULL,
  `DescripcionSoluciones` text,
  `IdCategoriaSoluciones` int(11) DEFAULT NULL,
  `SlugSoluciones` char(200) DEFAULT NULL,
  `ImagenSoluciones` char(200) DEFAULT NULL,
  `DescripcionCortaSoluciones` text,
  PRIMARY KEY (`IdSoluciones`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `soluciones` */

insert  into `soluciones`(`IdSoluciones`,`NombreSoluciones`,`DescripcionSoluciones`,`IdCategoriaSoluciones`,`SlugSoluciones`,`ImagenSoluciones`,`DescripcionCortaSoluciones`) values (1,'ULTRABAC','<div id=\"imCellStyle_2\"><div id=\"imTextObject_2\" style=\"text-align: left;\"><p style=\"text-align: justify;\"><span class=\"ff1 cf0 fs18\">Independientemente del tamaño de su organización</span><span class=\"cf3 ff1 fs18\"><b> ITERA S.A.C</b></span><span class=\"cf0 ff1 fs18\"> cuenta con la solución apropiada para usted. Nuestros productos cuentan con la exacta combinación de rendimiento, eficiencia y efectividad que necesita, entre ellos figuran:<br><br></span></p><p style=\"text-align: left;\"><span class=\"ff2 cf0 fs22\">-<wbr> Infraestructura para Centro de Datos (Servidores, Equipos de Comunicación,<br>-<wbr> Equipos de Respaldo de Energía, Aire Acondicionado y Control de Acceso).<br>-<wbr> Análisis, Diseño e Instalación de Redes (Cableado, Estructurado Co/FO y Wireless)<br>-<wbr> Equipamiento para usuarios Desktop, Móviles y Clientes Ligeros.<br>-<wbr> Monitoreo y Administración de Ancho de Banda.<br>-<wbr> Administración y Seguridad de Redes y Contenidos.<br>-<wbr> Software de Gestión Inteligente de Recursos e Infraestructura TI.<br>-<wbr> Software de Backup y Recuperación de Desastres.<br>-<wbr> Software de Virtualización para Servidores y Desktops.<br>-<wbr> Sistema de Gestión Empresarial ERP.</span><span class=\"fs18 ff3 cf0\"><br></span></p></div></div>',1,'ultrabac','imagenuno.jpg','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),(5,'Servidores y Respaldo de Energía',NULL,2,NULL,NULL,NULL),(6,'Workstations y NoteBooks',NULL,2,NULL,NULL,NULL),(7,'Equipos de Comunicación y Telefonía',NULL,2,NULL,NULL,NULL),(8,'Cymphonix',NULL,3,NULL,NULL,NULL),(9,'Fortinet',NULL,3,NULL,NULL,NULL),(10,'GFI Web Monitor™',NULL,3,NULL,NULL,NULL),(11,'GFI Mail Essentials™',NULL,3,NULL,NULL,NULL),(12,'GFI Mail Security™',NULL,3,NULL,NULL,NULL),(13,'GFI Mail Archiver™',NULL,3,NULL,NULL,NULL),(14,'ESET',NULL,4,NULL,NULL,NULL),(15,'GFI EndPoint Security™',NULL,4,NULL,NULL,NULL),(16,'Alloy','\r\n<h2 id=\"imPgTitle\">Alloy</h2>\r\n<div id=\"imBreadcrumb\">Soluciones &gt; Service Management &amp; Helpdesk</div>\r\n<div style=\"width: 984px; float: left;\">\r\n    <div id=\"imCell_1\" class=\"imGrid[0, 0]\"><div id=\"imCellStyleGraphics_1\"></div><div id=\"imCellStyle_1\"><div id=\"imObjectImage_1\"><div id=\"imObjectImageContent_1\"></div></div><script type=\"text/javascript\">var flashvars = {containerId: \"imObjectImage_1\", key: \"211206165160216183098137156117118120190152162126129174206156211232153\", cWidth: \"970\", cHeight: \"224\", copyright: \"© Copyright 2011 por ITERA S.A.C Todos los derechos reservados.\", watermark: \"false\", cpindex: \"153637\"}; var params = {quality: \"high\", bgcolor: \"#ffffff\", play: \"true\", loop: \"true\", wmode: \"transparent\", scale: \"noscale\", menu: \"true\", devicefont: \"false\", salign: \"lt\", allowscriptaccess: \"sameDomain\", allowFullScreen: \"true\"}; var attributes = {id: \"imObjectImageContent_1\", name: \"imObjectImageContent_1\", align: \"middle\"}; swfobject.embedSWF(\"res/imImage.swf\", \"imObjectImageContent_1\", \"970\", \"224\", \"10.0.0\", \"res/expressInstall.swf\", flashvars, params, attributes);</script></div></div>\r\n</div>\r\n<div style=\"width: 984px; float: left;\">\r\n    <div style=\"float: left; width: 656px;\">\r\n        <div id=\"imCell_2\" class=\"imGrid[1, 1]\"><div id=\"imCellStyleGraphics_2\"></div><div id=\"imCellStyle_2\"><div id=\"imTextObject_2\" style=\"text-align: left;\"><p style=\"text-align: justify;\"><span class=\"ff1 cf0 fs18\">Aloy Software est&#225;n dise&#241;ado para &nbsp;organizar y administrar mejor sus entornos IT existentes y optimizar el servicio interno y externo y el de los procesos de soporte para maximizar la eficiencia global y reducir los costos. Se divide en dos productos: <br /><br /><b>1.ALLOY NAVIGATOR:</b> </span><span class=\"cf1 ff2 fs18\">Ofrece soluciones de Help Desk, Service Desk, y Activos de TI.<br /></span></p><p style=\"text-align: left;\"><span class=\"ff1 cf0 fs18\"><b>2. ALLOY DISCOVERY:</b> Ofrece una completa red de soluciones de descubrimiento e inventario.</span><span class=\"fs24 ff3 cf0\"><br /></span></p><p style=\"text-align: justify;\"><span class=\"ff3 cf0 fs24\"><br /></span></p><p style=\"text-align: left;\"><span class=\"ff0 fs20 cf0\"><img src=\"/dinamic/img/html/untitled.png\" style=\"width: 640px; height: 137px;\" alt=\"\" title=\"\"/></span><span class=\"fs18 ff4 cf0\"><br /></span></p></div></div></div>\r\n    </div>\r\n    <div style=\"float: left; width: 328px;\">\r\n        <div id=\"imCell_3\" class=\"imGrid[1, 1]\"><div id=\"imCellStyleGraphics_3\"></div><div id=\"imCellStyle_3\"><div id=\"imTextObject_3\" style=\"text-align: left;\"><p style=\"text-align: left;\"><span class=\"fs20\"><span class=\"ff0 cf0\"><img src=\"/dinamic/img/html/alloy.jpg\" style=\"width: 280px; height: 332px;\" alt=\"\" title=\"\"/></span></span><span class=\"fs18 cf1 ff0\"><br /></span></p></div></div></div>\r\n    </div>\r\n\r\n</div>\r\n<div style=\"width: 984px; float: left;\">\r\n    <div style=\"height: 15px;\">&nbsp;</div>\r\n</div>\r\n\r\n\r\n</body>\r\n</html>\r\n',5,'alloy',NULL,'gsdfh'),(17,'Aranda',NULL,5,NULL,NULL,NULL),(18,'HelpPEOPLE',NULL,5,NULL,NULL,NULL),(19,'Invgate',NULL,5,NULL,NULL,NULL),(20,'Netsupport',NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `subcategoriaproducto` */

DROP TABLE IF EXISTS `subcategoriaproducto`;

CREATE TABLE `subcategoriaproducto` (
  `idSubCategoriaProducto` int(11) NOT NULL AUTO_INCREMENT,
  `NombreSubCategoriaProducto` char(200) DEFAULT NULL,
  `flagActivoSubCategoriaProducto` bigint(1) DEFAULT NULL,
  `IdCategoriaProducto` int(11) DEFAULT NULL,
  `SlugSubCategoriaProducto` char(200) DEFAULT NULL,
  PRIMARY KEY (`idSubCategoriaProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

/*Data for the table `subcategoriaproducto` */

insert  into `subcategoriaproducto`(`idSubCategoriaProducto`,`NombreSubCategoriaProducto`,`flagActivoSubCategoriaProducto`,`IdCategoriaProducto`,`SlugSubCategoriaProducto`) values (1,'Rackeables',1,1,'subcategoriauno'),(2,'Torre',1,1,'subcategoria-dos'),(3,'Disco',1,2,'subcategoria-tres'),(4,'Cinta',1,2,'subcategoria-cuatro'),(5,'Full Tower',1,3,'j'),(6,'Mid Tower',1,3,'k'),(7,'Mini Tower',1,3,'k'),(8,'Slim Line Case',1,3,'k'),(9,'Small Form Factor',1,3,'uj'),(10,'Workstation',1,4,NULL),(11,'Home',1,4,NULL),(12,'Lacer',1,5,NULL),(13,'Tinta',1,5,NULL),(14,'Matrizial',1,5,NULL),(15,'Ploter',1,5,NULL),(16,'red',1,5,NULL),(17,'Router',1,6,NULL),(18,'Router Administrable',1,6,NULL),(19,'Switch',1,6,NULL),(20,'Switch Administrable',1,6,NULL),(21,'Hub',1,6,NULL),(22,'VoIP',1,6,NULL),(23,'WiFi',1,6,NULL),(24,'Gabinetes',1,7,NULL);

/*Table structure for table `usuarioareacorreocontactenos` */

DROP TABLE IF EXISTS `usuarioareacorreocontactenos`;

CREATE TABLE `usuarioareacorreocontactenos` (
  `IdUsuario` int(11) DEFAULT NULL,
  `IdArea` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `usuarioareacorreocontactenos` */

insert  into `usuarioareacorreocontactenos`(`IdUsuario`,`IdArea`) values (1,1),(2,1);

/*Table structure for table `usuariosistema` */

DROP TABLE IF EXISTS `usuariosistema`;

CREATE TABLE `usuariosistema` (
  `IdUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `NombreUsuario` char(200) DEFAULT NULL,
  `LoginUsuario` char(200) DEFAULT NULL,
  `PasswordUsuario` char(20) DEFAULT NULL,
  `Correo` char(200) DEFAULT NULL,
  PRIMARY KEY (`IdUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `usuariosistema` */

insert  into `usuariosistema`(`IdUsuario`,`NombreUsuario`,`LoginUsuario`,`PasswordUsuario`,`Correo`) values (1,'Nazart','nazartj@gmail.com','123456','nazartj@gmail.com'),(2,'Nazart','nazarjb@hotmail.com','123456','nazarjb@hotmail.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
