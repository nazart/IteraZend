/*
SQLyog Enterprise - MySQL GUI v8.18 
MySQL - 5.5.16 : Database - alredsof_itera
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`alredsof_itera` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `alredsof_itera`;

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

insert  into `area`(`IdArea`,`NombreArea`,`ImagenArea`,`DescripcionCortaArea`,`SlugArea`,`DescripcionArea`) values (1,'area1','banner-eset-smartsecurity-home.jpg','sadasdasd asdasdasd','area1','asdasdasasdasdasdasd\r\nasdasdasd\r\nasd\r\na\r\nsda\r\nsd\r\nasd\r\nsad'),(2,'area2','banner-eset-smartsecurity-home.jpg','asdasdasd asdasd','area2','asdasdasasdasdasdasd\r\nasdasdasd\r\nasd\r\na\r\nsda\r\nsd\r\nasd\r\nsad'),(3,'area3','banner-eset-smartsecurity-home.jpg','asdads asdasdas','area3','asdasdasasdasdasdasd\r\nasdasdasd\r\nasd\r\na\r\nsda\r\nsd\r\nasd\r\nsad');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `banner` */

insert  into `banner`(`IdBanner`,`NombreBanner`,`DescripcionBanner`,`ImagenBanner`,`UrlBanner`,`OrdenBanner`,`EstadoBanner`) values (6,'uno','asdadasd','header-cybersecurity.jpg',NULL,1,1);

/*Table structure for table `categoriaproducto` */

DROP TABLE IF EXISTS `categoriaproducto`;

CREATE TABLE `categoriaproducto` (
  `idCategoriaProducto` int(11) NOT NULL AUTO_INCREMENT,
  `NombreCategoriaProducto` char(200) DEFAULT NULL,
  `flagActivoCategoriaProducto` bigint(1) DEFAULT NULL,
  `IdArea` int(11) DEFAULT NULL,
  `SlugCategoriaProducto` char(200) DEFAULT NULL,
  PRIMARY KEY (`idCategoriaProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `categoriaproducto` */

insert  into `categoriaproducto`(`idCategoriaProducto`,`NombreCategoriaProducto`,`flagActivoCategoriaProducto`,`IdArea`,`SlugCategoriaProducto`) values (1,'categoria uno',1,1,'catgoria1'),(2,'categoria dos',1,1,'categoria2'),(3,'categoria tres',1,2,'categoria3');

/*Table structure for table `categoriasoluciones` */

DROP TABLE IF EXISTS `categoriasoluciones`;

CREATE TABLE `categoriasoluciones` (
  `IdCategoriaSoluciones` int(11) NOT NULL AUTO_INCREMENT,
  `NombreCategoriaSoluciones` char(200) DEFAULT NULL,
  `DescripcionCategoriaSoluciones` text,
  `SlugCategoriaSolucion` char(200) DEFAULT NULL,
  `ImagenCategoriaSoluciones` char(200) DEFAULT NULL,
  PRIMARY KEY (`IdCategoriaSoluciones`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `categoriasoluciones` */

insert  into `categoriasoluciones`(`IdCategoriaSoluciones`,`NombreCategoriaSoluciones`,`DescripcionCategoriaSoluciones`,`SlugCategoriaSolucion`,`ImagenCategoriaSoluciones`) values (1,'categoria solucion1',NULL,'categoria-solucion-uno','imagenuno.jpg'),(2,'categoria solucion2',NULL,'categoria-solucion-dos','imagendos.jpg'),(3,'categoria solucion3',NULL,'categoria-solucion-tres','imagentres.jpg');

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

insert  into `core_session`(`Id`,`save_path`,`name`,`Modified`,`LifeTime`,`Data`) values ('64k59bmvflg1fd2ncajfec6c41','','',1345001448,1440,''),('su1nquvspkr3k7hk1ks7h4scv4','','',1345007142,1440,'');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `marca` */

insert  into `marca`(`IdMarca`,`NombreMarca`,`SlugMarca`,`ImagenMarca`) values (1,'lg','lg','lg.jpg'),(2,'samsung','samsung','samsung.jpg'),(3,'toshiba','toshiba','toshiba.jpg'),(4,'AOC','aoc','aoc.jpg');

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

insert  into `paginainterna`(`IdPaginaInterna`,`NombrePaginaInterna`,`ContenidoPaginaInterna`,`UrlPaginaInterna`) values (1,'Nosotros','\r\nINCLUYE\r\n\r\n    Home Theater HT-E320/PE 150W\r\n\r\nCARACTERÍSTICAS DEL PRODUCTO\r\n\r\n    2.1 canales\r\n    Capacidad para 1 disco\r\n    Potencia total de 150 Watts\r\n    Ecualizador\r\n    Grabación USB\r\n    Discos Reproducibles: CD DA / CD-R / CD-RW / DVD-Video / DVD±R / DVD±RW / VCD\r\n    Salida de componente\r\n    Entrada HDMI\r\n    Entrada de audio\r\n\r\nINFORMACIÓN ADICIONAL\r\n\r\n    Garantía del producto: 1 año\r\n\r\n','/nosotros');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `producto` */

insert  into `producto`(`IdProducto`,`NombreProducto`,`IdArea`,`IdCategoriaProducto`,`IdSubCategoriaProducto`,`PrecioProducto`,`DescricionCortaProducto`,`SlugProducto`,`IdMarca`,`DescricionProducto`,`ImagenProducto`) values (1,'Caramelo',1,1,1,NULL,'Lorem Ipsum is simply dummy text of the printing a','caramelo',1,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','imagenuno.jpg'),(2,'Azucar',2,3,NULL,NULL,'Lorem Ipsum is simply dummy text of the printing a','azucar',2,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',NULL),(3,'laptop',2,1,1,NULL,'Lorem Ipsum is simply dummy text of the printing a','laptop',1,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `soluciones` */

insert  into `soluciones`(`IdSoluciones`,`NombreSoluciones`,`DescripcionSoluciones`,`IdCategoriaSoluciones`,`SlugSoluciones`,`ImagenSoluciones`,`DescripcionCortaSoluciones`) values (1,'solucion 1','<div id=\"imCellStyle_2\"><div id=\"imTextObject_2\" style=\"text-align: left;\"><p style=\"text-align: justify;\"><span class=\"ff1 cf0 fs18\">Independientemente del tamaño de su organización</span><span class=\"cf3 ff1 fs18\"><b> ITERA S.A.C</b></span><span class=\"cf0 ff1 fs18\"> cuenta con la solución apropiada para usted. Nuestros productos cuentan con la exacta combinación de rendimiento, eficiencia y efectividad que necesita, entre ellos figuran:<br><br></span></p><p style=\"text-align: left;\"><span class=\"ff2 cf0 fs22\">-<wbr> Infraestructura para Centro de Datos (Servidores, Equipos de Comunicación,<br>-<wbr> Equipos de Respaldo de Energía, Aire Acondicionado y Control de Acceso).<br>-<wbr> Análisis, Diseño e Instalación de Redes (Cableado, Estructurado Co/FO y Wireless)<br>-<wbr> Equipamiento para usuarios Desktop, Móviles y Clientes Ligeros.<br>-<wbr> Monitoreo y Administración de Ancho de Banda.<br>-<wbr> Administración y Seguridad de Redes y Contenidos.<br>-<wbr> Software de Gestión Inteligente de Recursos e Infraestructura TI.<br>-<wbr> Software de Backup y Recuperación de Desastres.<br>-<wbr> Software de Virtualización para Servidores y Desktops.<br>-<wbr> Sistema de Gestión Empresarial ERP.</span><span class=\"fs18 ff3 cf0\"><br></span></p></div></div>',1,'solucion-uno','imagenuno.jpg','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),(2,'solucion 2','<div id=\"imCellStyle_2\"><div id=\"imTextObject_2\" style=\"text-align: left;\"><p style=\"text-align: justify;\"><span class=\"ff1 cf0 fs18\">Independientemente del tamaño de su organización</span><span class=\"cf3 ff1 fs18\"><b> ITERA S.A.C</b></span><span class=\"cf0 ff1 fs18\"> cuenta con la solución apropiada para usted. Nuestros productos cuentan con la exacta combinación de rendimiento, eficiencia y efectividad que necesita, entre ellos figuran:<br><br></span></p><p style=\"text-align: left;\"><span class=\"ff2 cf0 fs22\">-<wbr> Infraestructura para Centro de Datos (Servidores, Equipos de Comunicación,<br>-<wbr> Equipos de Respaldo de Energía, Aire Acondicionado y Control de Acceso).<br>-<wbr> Análisis, Diseño e Instalación de Redes (Cableado, Estructurado Co/FO y Wireless)<br>-<wbr> Equipamiento para usuarios Desktop, Móviles y Clientes Ligeros.<br>-<wbr> Monitoreo y Administración de Ancho de Banda.<br>-<wbr> Administración y Seguridad de Redes y Contenidos.<br>-<wbr> Software de Gestión Inteligente de Recursos e Infraestructura TI.<br>-<wbr> Software de Backup y Recuperación de Desastres.<br>-<wbr> Software de Virtualización para Servidores y Desktops.<br>-<wbr> Sistema de Gestión Empresarial ERP.</span><span class=\"fs18 ff3 cf0\"><br></span></p></div></div>',1,'solucion-dos','imagenuno.jpg','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),(3,'solucion 3','<div id=\"imCellStyle_2\"><div id=\"imTextObject_2\" style=\"text-align: left;\"><p style=\"text-align: justify;\"><span class=\"ff1 cf0 fs18\">Independientemente del tamaño de su organización</span><span class=\"cf3 ff1 fs18\"><b> ITERA S.A.C</b></span><span class=\"cf0 ff1 fs18\"> cuenta con la solución apropiada para usted. Nuestros productos cuentan con la exacta combinación de rendimiento, eficiencia y efectividad que necesita, entre ellos figuran:<br><br></span></p><p style=\"text-align: left;\"><span class=\"ff2 cf0 fs22\">-<wbr> Infraestructura para Centro de Datos (Servidores, Equipos de Comunicación,<br>-<wbr> Equipos de Respaldo de Energía, Aire Acondicionado y Control de Acceso).<br>-<wbr> Análisis, Diseño e Instalación de Redes (Cableado, Estructurado Co/FO y Wireless)<br>-<wbr> Equipamiento para usuarios Desktop, Móviles y Clientes Ligeros.<br>-<wbr> Monitoreo y Administración de Ancho de Banda.<br>-<wbr> Administración y Seguridad de Redes y Contenidos.<br>-<wbr> Software de Gestión Inteligente de Recursos e Infraestructura TI.<br>-<wbr> Software de Backup y Recuperación de Desastres.<br>-<wbr> Software de Virtualización para Servidores y Desktops.<br>-<wbr> Sistema de Gestión Empresarial ERP.</span><span class=\"fs18 ff3 cf0\"><br></span></p></div></div>',2,'solucion-tres','imagenuno.jpg','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),(4,'solucion 4',NULL,2,'solucion-cuatro','imagenuno.jpg','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.');

/*Table structure for table `subcategoriaproducto` */

DROP TABLE IF EXISTS `subcategoriaproducto`;

CREATE TABLE `subcategoriaproducto` (
  `idSubCategoriaProducto` int(11) NOT NULL AUTO_INCREMENT,
  `NombreSubCategoriaProducto` char(200) DEFAULT NULL,
  `flagActivoSubCategoriaProducto` bigint(1) DEFAULT NULL,
  `IdCategoriaProducto` int(11) DEFAULT NULL,
  `SlugSubCategoriaProducto` char(200) DEFAULT NULL,
  PRIMARY KEY (`idSubCategoriaProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `subcategoriaproducto` */

insert  into `subcategoriaproducto`(`idSubCategoriaProducto`,`NombreSubCategoriaProducto`,`flagActivoSubCategoriaProducto`,`IdCategoriaProducto`,`SlugSubCategoriaProducto`) values (1,'subcategoria  1',1,1,'subcategoriauno'),(2,'subcategoria dos',1,2,'subcategoria-dos'),(3,'subcategoria tres',1,1,'subcategoria-tres'),(4,'subcategoria cuatro',1,2,'subcategoria-cuatro');

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
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
