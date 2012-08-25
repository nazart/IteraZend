/*
SQLyog Enterprise - MySQL GUI v8.02 RC
MySQL - 5.5.15-log : Database - itera
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

LOCK TABLES `area` WRITE;

insert  into `area`(`IdArea`,`NombreArea`,`ImagenArea`,`DescripcionCortaArea`,`SlugArea`,`DescripcionArea`) values (1,'Hardware y Infraestructura','1.png','sadasdasd asdasdasd','hardware','asdasdasasdasdasdasd\r\nasdasdasd\r\nasd\r\na\r\nsda\r\nsd\r\nasd\r\nsad'),(2,'Seguridad y Proteccion de Datos','2.jpg','asdasdasd asdasd','segurity','asdasdasasdasdasdasd\r\nasdasdasd\r\nasd\r\na\r\nsda\r\nsd\r\nasd\r\nsad'),(3,'Gestion Service & HelpDesk','3.jpg','asdads asdasdas','backup','asdasdasasdasdasdasd\r\nasdasdasd\r\nasd\r\na\r\nsda\r\nsd\r\nasd\r\nsad');

UNLOCK TABLES;

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

LOCK TABLES `banner` WRITE;

insert  into `banner`(`IdBanner`,`NombreBanner`,`DescripcionBanner`,`ImagenBanner`,`UrlBanner`,`OrdenBanner`,`EstadoBanner`) values (6,'uno','asdadasd','esetmac.jpg',NULL,1,1),(7,'dos',NULL,'essetendpoint.png',NULL,2,1);

UNLOCK TABLES;

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

LOCK TABLES `categoriaproducto` WRITE;

insert  into `categoriaproducto`(`idCategoriaProducto`,`NombreCategoriaProducto`,`flagActivoCategoriaProducto`,`IdArea`,`SlugCategoriaProducto`) values (1,'Servidores',1,1,'servidores'),(2,'Storage',1,1,'storage'),(3,'Desktop',1,1,'desktop'),(4,'Portatiles',1,1,'portatiles'),(5,'Impresoras',1,1,'impresoras'),(6,'Comunicaciones',1,1,'comunicaciones'),(7,'Accesorios',1,1,'accesorios'),(8,NULL,NULL,NULL,NULL);

UNLOCK TABLES;

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

LOCK TABLES `categoriasoluciones` WRITE;

insert  into `categoriasoluciones`(`IdCategoriaSoluciones`,`NombreCategoriaSoluciones`,`DescripcionCategoriaSoluciones`,`SlugCategoriaSolucion`,`ImagenCategoriaSoluciones`) values (1,'categoria solucion1',NULL,'categoria-solucion-uno','imagenuno.jpg'),(2,'categoria solucion2',NULL,'categoria-solucion-dos','imagendos.jpg'),(3,'categoria solucion3',NULL,'categoria-solucion-tres','imagentres.jpg');

UNLOCK TABLES;

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

LOCK TABLES `contacto` WRITE;

insert  into `contacto`(`IdContacto`,`NombresContacto`,`TelefonoContacto`,`Email`,`FechaRegistro`,`Ip`) values (1,'asdsad','asdasd','na.zar.tj@gmail.com','2012-07-12 14:53:49','127.0.0.1'),(2,'asdasd','asda','na.zar.tj@gmail.com','2012-07-12 14:17:50','127.0.0.1'),(3,'asdasd','asdasd asdasd','na.zar.tj@gmail.com','2012-07-12 14:24:52','127.0.0.1'),(4,'asdsd','asdasd','na.zar.tj@gmail.com','2012-07-12 14:29:54','127.0.0.1'),(5,'na','asdsd','na.zar.tj@gmail.com','2012-07-12 14:38:54','127.0.0.1'),(6,'adsda','asdasd','na.zar.tj@gmail.com','2012-07-12 14:10:55','127.0.0.1'),(7,'asdasd','asdasd','na.zar.tj@gmail.com','2012-07-12 14:58:59','127.0.0.1'),(8,'naasdad','asdasd','na.zar.tj@gmail.com','2012-07-12 15:12:00','127.0.0.1'),(9,'asdasd','asdasd','na.zar.tj@gmail.com','2012-07-12 15:29:00','127.0.0.1'),(10,'asdasd','asdasd','na.zar.tj@gmail.com','2012-07-12 15:42:00','127.0.0.1'),(11,'naasdad','asdasd','na.zar.tj@gmail.com','2012-07-12 15:11:01','127.0.0.1'),(12,'asdasd','asdad','na.zar.tj@gmail.com','2012-07-12 15:23:01','127.0.0.1'),(13,'asdasd','asdasd','na.zar.tj@gmail.com','2012-07-12 15:29:02','127.0.0.1'),(14,'naasdad','asdasd','na.zar.tj@gmail.com','2012-07-12 15:56:02','127.0.0.1'),(15,'asdasd','asdasd','na.zar.tj@gmail.com','2012-07-12 15:46:19','127.0.0.1'),(16,'asdasdnasdds','1231231123','nazartj@gmail.com.pe','2012-07-14 20:33:22','127.0.0.1'),(17,'asdasd','2412234234','na.zar.tj@gmail.com','2012-07-14 22:03:20','127.0.0.1'),(18,'asdasd','2412234234','na.zar.tj@gmail.com','2012-07-14 22:18:21','127.0.0.1'),(19,'asdasd','2412234234','na.zar.tj@gmail.com','2012-07-14 22:04:22','127.0.0.1'),(20,'asdasd','2412234234','na.zar.tj@gmail.com','2012-07-14 22:06:26','127.0.0.1'),(21,'adasd','782323234','na.zar.tj@gmail.com','2012-07-14 22:19:29','127.0.0.1'),(22,'adasd','782323234','na.zar.tj@gmail.com','2012-07-14 22:29:30','127.0.0.1'),(23,'adasd','782323234','na.zar.tj@gmail.com','2012-07-14 22:36:38','127.0.0.1'),(24,'asdasdas','4353453543','na.zar.tj@gmail.com','2012-07-15 09:12:13','127.0.0.1'),(25,'nazart jara huaman','98098080','na.zar.tj@gmail.com','2012-07-15 09:12:15','127.0.0.1');

UNLOCK TABLES;

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

LOCK TABLES `core_session` WRITE;

insert  into `core_session`(`Id`,`save_path`,`name`,`Modified`,`LifeTime`,`Data`) values ('18rt1r2cbk8i266setd63rdi15','','',1345096871,1440,'default|a:1:{s:10:\"cotizacion\";N;}'),('4ttfce2qhgfaja9sdhk3aie2a2','','',1345092647,1440,'default|a:1:{s:10:\"cotizacion\";N;}'),('8kev4vkmjd4f4aejkph7hoqt24','','',1345155118,1440,'default|a:1:{s:10:\"cotizacion\";N;}'),('e7q31kmf1hlcqot8h7v9cgqfa3','','',1345876904,1440,'default|a:1:{s:10:\"cotizacion\";N;}'),('hmb590dnm3rbt8ma7noch0o4r0','','',1345086219,1440,'default|a:1:{s:10:\"cotizacion\";N;}'),('vv2rog7324394jdh3ns3tkrgj4','','',1345670940,1440,'default|a:1:{s:10:\"cotizacion\";N;}');

UNLOCK TABLES;

/*Table structure for table `cotizacion` */

DROP TABLE IF EXISTS `cotizacion`;

CREATE TABLE `cotizacion` (
  `idCotizacion` int(11) NOT NULL AUTO_INCREMENT,
  `fechaCotizacion` datetime DEFAULT NULL,
  `nombre` char(100) DEFAULT NULL,
  `apellidos` char(100) DEFAULT NULL,
  `empresa` char(100) DEFAULT NULL,
  `telefono` char(20) DEFAULT NULL,
  `email` char(100) DEFAULT NULL,
  `descripcion` text,
  PRIMARY KEY (`idCotizacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cotizacion` */

LOCK TABLES `cotizacion` WRITE;

UNLOCK TABLES;

/*Table structure for table `cotizacionproducto` */

DROP TABLE IF EXISTS `cotizacionproducto`;

CREATE TABLE `cotizacionproducto` (
  `idProducto` int(11) NOT NULL,
  `idCotizacion` int(11) NOT NULL,
  PRIMARY KEY (`idProducto`,`idCotizacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cotizacionproducto` */

LOCK TABLES `cotizacionproducto` WRITE;

UNLOCK TABLES;

/*Table structure for table `detalleslug` */

DROP TABLE IF EXISTS `detalleslug`;

CREATE TABLE `detalleslug` (
  `IdDetalleSlug` int(11) NOT NULL AUTO_INCREMENT,
  `IdProducto` int(11) DEFAULT NULL,
  `IdSlug` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdDetalleSlug`)
) ENGINE=InnoDB AUTO_INCREMENT=415 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `detalleslug` */

LOCK TABLES `detalleslug` WRITE;

insert  into `detalleslug`(`IdDetalleSlug`,`IdProducto`,`IdSlug`) values (411,2,44),(412,2,46),(413,1,45),(414,1,57);

UNLOCK TABLES;

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

LOCK TABLES `ftx_utf8` WRITE;

insert  into `ftx_utf8`(`id`,`col1`,`col2`) values (1,'proliant microserver','proliant microserver'),(2,'proliant','proliant');

UNLOCK TABLES;

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

LOCK TABLES `imagenproducto` WRITE;

insert  into `imagenproducto`(`IdImagenProducto`,`NombreImagenProducto`,`PrioridadImagenProducto`,`IdProducto`) values (1,'imagenuno.jpg',1,1),(2,'imagendos.jpg',2,1),(3,'imagentres.jpg',3,1);

UNLOCK TABLES;

/*Table structure for table `marca` */

DROP TABLE IF EXISTS `marca`;

CREATE TABLE `marca` (
  `IdMarca` int(11) NOT NULL AUTO_INCREMENT,
  `NombreMarca` char(200) DEFAULT NULL,
  `SlugMarca` char(200) DEFAULT NULL,
  `ImagenMarca` char(200) DEFAULT NULL,
  PRIMARY KEY (`IdMarca`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `marca` */

LOCK TABLES `marca` WRITE;

insert  into `marca`(`IdMarca`,`NombreMarca`,`SlugMarca`,`ImagenMarca`) values (1,'HP','hp','hp.jpg'),(2,'IBM','ibm','ibm.jpg'),(3,'EMC','emc','emc.jpg'),(5,'LENOVO','lenovo','lenovo.gif'),(6,'TOSHIBA','toshiba','toshiba.jpg'),(7,'OKIDATA','okidata','okidata.gif'),(8,'CISCO','cisco','cisco.gif');

UNLOCK TABLES;

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

LOCK TABLES `paginainterna` WRITE;

insert  into `paginainterna`(`IdPaginaInterna`,`NombrePaginaInterna`,`ContenidoPaginaInterna`,`UrlPaginaInterna`) values (1,'Nosotros','				<a id=\"imGoToCont\"></a>\r\n				<h2 id=\"imPgTitle\">Nosotros</h2>\r\n				<div style=\"width: 984px; float: left;\">\r\n					<div id=\"imCell_3\" class=\"imGrid[0, 0]\">\r\n					<div id=\"imCellStyleGraphics_3\">\r\n					</div><div id=\"imCellStyle_3\">\r\n					\r\n				<div style=\"width: 984px; float: left;\">\r\n					<div style=\"float: left; width: 246px;\">\r\n						<div id=\"imCell_2\" class=\"imGrid[1, 1]\"><div id=\"imCellStyleGraphics_2\"></div><div id=\"imCellStyle_2\"><div id=\"imTextObject_2\" style=\"text-align: left;\"><p style=\"text-align: left;\"><span class=\"ff2 cf3 fs22\"><b>MISION:</b></span><b><span class=\"fs20 cf1 ff2\"><br /></span></b><span class=\"fs18 cf0 ff2\"><br />Asistir y acompa&#241;ar a las empresas que buscan fortalecer su competitividad y mejorar sus procesos de negocios <br />mediante la incorporaci&#243;n de lo </span><span class=\"cf1 fs18 ff2\">&#250;ltimo en tecnolog&#237;as de la informaci&#243;n, infraestructura y mejores pr&#225;cticas.</span><span class=\"cf0 fs18 ff2\"> <br /></span></p><p style=\"text-align: justify;\"><span class=\"ff2 cf0 fs18\"><br /></span></p><p style=\"text-align: center;\"><span class=\"ff2 cf3 fs18\">-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr></span><span class=\"cf1 ff2 fs18\"><br /></span><span class=\"fs20 cf3 ff2\"><b><br /></b></span></p><p style=\"text-align: left;\"><span class=\"ff2 cf3 fs22\"><b>VISION:</b></span><b><span class=\"fs18 cf1 ff2\"><br /></span></b><span class=\"cf0 fs18 ff2\"><br /></span><span class=\"fs20 cf0 ff2\">Ser el proveedor de referencia l&#237;der en la aplicaci&#243;n de Soluciones Tecnol&#243;gicas, mediante el desarrollo de relaciones de largo plazo con nuestros &nbsp;clientes, ofreciendo excelencia en el servicio y superando las expectativas de valor agregado. </span><span class=\"fs18 cf1 ff2\"><br /></span><span class=\"cf3 fs18 ff2\"><br /></span></p><p style=\"text-align: center;\"><span class=\"ff2 cf3 fs18\">-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr></span><span class=\"cf1 ff2 fs18\"><br /></span><span class=\"fs20 cf3 ff2\"><b><br /></b></span></p><p style=\"text-align: left;\"><span class=\"ff2 cf3 fs22\"><b>VALORES:</b></span><b><span class=\"fs20 ff2 cf3\"><br /></span><span class=\"cf0 fs20 ff2\"><br /></span></b></p><ul><li><p style=\"text-align: left;\"><span class=\"ff2 cf0 fs20\"><b> </b>Honestidad<br /></span></p></li><li><p style=\"text-align: left;\"><span class=\"ff2 cf0 fs20\"><span class=\"ff2\"> Respeto<br /></span></span></p></li><li><p style=\"text-align: left;\"><span class=\"ff2 cf0 fs20\"><span class=\"ff2\"><span class=\"ff2\"> Excelencia <br /></span></span></span></p></li><li><p style=\"text-align: left;\"><span class=\"ff2 cf0 fs20\"><span class=\"ff2\"><span class=\"ff2\"><span class=\"ff2\"> Calidad<br /></span></span></span></span></p></li><li><p style=\"text-align: left;\"><span class=\"ff2 cf0 fs20\"><span class=\"ff2\"><span class=\"ff2\"><span class=\"ff2\"><span class=\"ff2\"> Creatividad<br /></span></span></span></span></span></p></li><li><p style=\"text-align: left;\"><span class=\"ff2 cf0 fs20\"><span class=\"ff2\"><span class=\"ff2\"><span class=\"ff2\"><span class=\"ff2\"><span class=\"ff2\"> Progreso<br /></span></span></span></span></span></span></p></li><li><p style=\"text-align: left;\"><span class=\"ff2 cf0 fs20\"><span class=\"ff2\"><span class=\"ff2\"><span class=\"ff2\"><span class=\"ff2\"><span class=\"ff2\"><span class=\"ff2\"> Deseo de Innovar<br /></span></span></span></span></span></span></span></p></li></ul><p style=\"text-align: left;\"><span class=\"fs18 ff2 cf0\"><br /></span></p><p style=\"text-align: center;\"><span class=\"ff2 cf3 fs18\">-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr></span><span class=\"cf0 ff2 fs18\"><br /><br /></span><span class=\"fs24 cf3 ff2\"><b>www.itera.com.pe</b></span><span class=\"fs18 cf0 ff3\"><br /></span></p></div></div></div>\r\n					</div>\r\n					<div style=\"float: left; width: 738px;\">\r\n						<div id=\"imCell_1\" class=\"imGrid[1, 1]\"><div id=\"imCellStyleGraphics_1\"></div><div id=\"imCellStyle_1\"><div id=\"imTextObject_1\" style=\"text-align: left;\"><p style=\"text-align: justify;\"><span class=\"ff2 cf3 fs22\"><b>ITERA S.A.C: <br /></b></span><b><span class=\"cf0 ff2 fs22\"><br /></span></b><span class=\"fs18 cf0 ff2\">Es una empresa proveedora de soluciones y servicios, basados fundamentalmente en la utlizaci&#243;n de Tecnolog&#237;as para el correcto desarrollo &nbsp;de los negocios. La finalidad de la empresa es brindar productos y servicios de alta calidad, con soporte t&#233;cnico especializado permanentemente y un servicio de post-<wbr>venta eficaz. Nuestras soluciones son aplicables en todos los rubros y abarcan desde &nbsp;la etapa de an&#225;lisis y consultoria estrat&#233;gica, dise&#241;o y puesta en marca del proyecto, hasta el posterior soporte y mantenimiento.<br /><br /><b><br /></b></span><b><span class=\"fs22 cf3 ff2\">OBJETIVOS:<br /></span></b><span class=\"cf0 fs22 ff2\"><br /></span></p><ul><li><p style=\"text-align: justify;\"><span class=\"fs18 ff2 cf0\">Aplicar las correctas Soluciones Tecnol&#243;gicas para crear una plataforma eficiente en donde se pueda desarrollar con mayor productividad a las actividades a la que se dedica su empresa.<br /></span></p></li><li><p style=\"text-align: justify;\"><span class=\"ff2 cf0 fs18\">Combinamos experiencia, capacidad, conocimiento e investigaci&#243;n de nuevas tendencias y tecnolog&#237;as para explotar al m&#225;ximo las capacidades &nbsp;de su compa&#241;ia.<br /></span></p></li></ul><p style=\"text-align: center;\"><span class=\"fs18 ff2 cf0\"> <br /></span><span class=\"fs24 cf4 ff3\"><br /></span></p><p style=\"text-align: center; padding-left: 30px;\"><span class=\"ff2 cf0 fs18\"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class=\"fs20 ff0 cf0\"><img src=\"/dinamic/img/nosotros/itera.jpg\" style=\"width: 543px; height: 385px;\" alt=\"\" title=\"\"/></span><span class=\"fs18 cf4 ff4\"><span class=\"imUl\"><br /></span></span><span class=\"fs20 cf3 ff4\"><b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"\\dinamic\\img\\nosotros\\itera.pdf\" target=\"_blank\" class=\"imCssLink\">Descargar nuestra Carpeta de Presentaci&#243;n</a> </b></span></p><p style=\"text-align: center; padding-left: 30px;\"><span class=\"cf0 ff3 fs20\"><b><br /></b></span></p><p style=\"text-align: left;\"><span class=\"fs20 ff3 cf0\"><b><br /></b></span></p><p style=\"text-align: center;\"><span class=\"ff2 cf0 fs18\"><br /><br /></span></p></div></div></div>\r\n					</div>\r\n					\r\n				</div>\r\n				<div style=\"width: 984px; float: left;\">\r\n					<div style=\"height: 15px;\">&nbsp;</div>\r\n				</div>\r\n			','/nosotros');

UNLOCK TABLES;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `producto` */

LOCK TABLES `producto` WRITE;

UNLOCK TABLES;

/*Table structure for table `productodestacadomarca` */

DROP TABLE IF EXISTS `productodestacadomarca`;

CREATE TABLE `productodestacadomarca` (
  `IdProductosDestacados` int(11) NOT NULL AUTO_INCREMENT,
  `IdProducto` int(11) DEFAULT NULL,
  `IdMarca` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdProductosDestacados`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `productodestacadomarca` */

LOCK TABLES `productodestacadomarca` WRITE;

insert  into `productodestacadomarca`(`IdProductosDestacados`,`IdProducto`,`IdMarca`) values (1,1,1),(2,2,2),(3,3,1);

UNLOCK TABLES;

/*Table structure for table `slug` */

DROP TABLE IF EXISTS `slug`;

CREATE TABLE `slug` (
  `IdSlug` int(11) NOT NULL AUTO_INCREMENT,
  `NombreSlug` char(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`IdSlug`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `slug` */

LOCK TABLES `slug` WRITE;

insert  into `slug`(`IdSlug`,`NombreSlug`) values (44,'azucar'),(45,'caramelo'),(46,'azucarado'),(47,'acaramelado');

UNLOCK TABLES;

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

LOCK TABLES `soluciones` WRITE;

insert  into `soluciones`(`IdSoluciones`,`NombreSoluciones`,`DescripcionSoluciones`,`IdCategoriaSoluciones`,`SlugSoluciones`,`ImagenSoluciones`,`DescripcionCortaSoluciones`) values (1,'Infraestructura','<div id=\"imCellStyle_2\"><div id=\"imTextObject_2\" style=\"text-align: left;\"><p style=\"text-align: justify;\"><span class=\"ff1 cf0 fs18\">Independientemente del tamaño de su organización</span><span class=\"cf3 ff1 fs18\"><b> ITERA S.A.C</b></span><span class=\"cf0 ff1 fs18\"> cuenta con la solución apropiada para usted. Nuestros productos cuentan con la exacta combinación de rendimiento, eficiencia y efectividad que necesita, entre ellos figuran:<br><br></span></p><p style=\"text-align: left;\"><span class=\"ff2 cf0 fs22\">-<wbr> Infraestructura para Centro de Datos (Servidores, Equipos de Comunicación,<br>-<wbr> Equipos de Respaldo de Energía, Aire Acondicionado y Control de Acceso).<br>-<wbr> Análisis, Diseño e Instalación de Redes (Cableado, Estructurado Co/FO y Wireless)<br>-<wbr> Equipamiento para usuarios Desktop, Móviles y Clientes Ligeros.<br>-<wbr> Monitoreo y Administración de Ancho de Banda.<br>-<wbr> Administración y Seguridad de Redes y Contenidos.<br>-<wbr> Software de Gestión Inteligente de Recursos e Infraestructura TI.<br>-<wbr> Software de Backup y Recuperación de Desastres.<br>-<wbr> Software de Virtualización para Servidores y Desktops.<br>-<wbr> Sistema de Gestión Empresarial ERP.</span><span class=\"fs18 ff3 cf0\"><br></span></p></div></div>',1,'solucion-uno','imagenuno.jpg','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),(2,'Seguridad y Proteccion de Datos','<div id=\"imCellStyle_2\"><div id=\"imTextObject_2\" style=\"text-align: left;\"><p style=\"text-align: justify;\"><span class=\"ff1 cf0 fs18\">Independientemente del tamaño de su organización</span><span class=\"cf3 ff1 fs18\"><b> ITERA S.A.C</b></span><span class=\"cf0 ff1 fs18\"> cuenta con la solución apropiada para usted. Nuestros productos cuentan con la exacta combinación de rendimiento, eficiencia y efectividad que necesita, entre ellos figuran:<br><br></span></p><p style=\"text-align: left;\"><span class=\"ff2 cf0 fs22\">-<wbr> Infraestructura para Centro de Datos (Servidores, Equipos de Comunicación,<br>-<wbr> Equipos de Respaldo de Energía, Aire Acondicionado y Control de Acceso).<br>-<wbr> Análisis, Diseño e Instalación de Redes (Cableado, Estructurado Co/FO y Wireless)<br>-<wbr> Equipamiento para usuarios Desktop, Móviles y Clientes Ligeros.<br>-<wbr> Monitoreo y Administración de Ancho de Banda.<br>-<wbr> Administración y Seguridad de Redes y Contenidos.<br>-<wbr> Software de Gestión Inteligente de Recursos e Infraestructura TI.<br>-<wbr> Software de Backup y Recuperación de Desastres.<br>-<wbr> Software de Virtualización para Servidores y Desktops.<br>-<wbr> Sistema de Gestión Empresarial ERP.</span><span class=\"fs18 ff3 cf0\"><br></span></p></div></div>',1,'solucion-dos','imagenuno.jpg','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),(3,'Backup & Disaster Recovery','<div id=\"imCellStyle_2\"><div id=\"imTextObject_2\" style=\"text-align: left;\"><p style=\"text-align: justify;\"><span class=\"ff1 cf0 fs18\">Independientemente del tamaño de su organización</span><span class=\"cf3 ff1 fs18\"><b> ITERA S.A.C</b></span><span class=\"cf0 ff1 fs18\"> cuenta con la solución apropiada para usted. Nuestros productos cuentan con la exacta combinación de rendimiento, eficiencia y efectividad que necesita, entre ellos figuran:<br><br></span></p><p style=\"text-align: left;\"><span class=\"ff2 cf0 fs22\">-<wbr> Infraestructura para Centro de Datos (Servidores, Equipos de Comunicación,<br>-<wbr> Equipos de Respaldo de Energía, Aire Acondicionado y Control de Acceso).<br>-<wbr> Análisis, Diseño e Instalación de Redes (Cableado, Estructurado Co/FO y Wireless)<br>-<wbr> Equipamiento para usuarios Desktop, Móviles y Clientes Ligeros.<br>-<wbr> Monitoreo y Administración de Ancho de Banda.<br>-<wbr> Administración y Seguridad de Redes y Contenidos.<br>-<wbr> Software de Gestión Inteligente de Recursos e Infraestructura TI.<br>-<wbr> Software de Backup y Recuperación de Desastres.<br>-<wbr> Software de Virtualización para Servidores y Desktops.<br>-<wbr> Sistema de Gestión Empresarial ERP.</span><span class=\"fs18 ff3 cf0\"><br></span></p></div></div>',2,'solucion-tres','imagenuno.jpg','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),(4,'Gestion y Mesa de Ayuda',NULL,2,'solucion-cuatro','imagenuno.jpg','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.');

UNLOCK TABLES;

/*Table structure for table `subcategoriaproducto` */

DROP TABLE IF EXISTS `subcategoriaproducto`;

CREATE TABLE `subcategoriaproducto` (
  `idSubCategoriaProducto` int(11) NOT NULL AUTO_INCREMENT,
  `NombreSubCategoriaProducto` char(200) DEFAULT NULL,
  `flagActivoSubCategoriaProducto` bigint(1) DEFAULT NULL,
  `IdCategoriaProducto` int(11) DEFAULT NULL,
  `SlugSubCategoriaProducto` char(200) DEFAULT NULL,
  PRIMARY KEY (`idSubCategoriaProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

/*Data for the table `subcategoriaproducto` */

LOCK TABLES `subcategoriaproducto` WRITE;

insert  into `subcategoriaproducto`(`idSubCategoriaProducto`,`NombreSubCategoriaProducto`,`flagActivoSubCategoriaProducto`,`IdCategoriaProducto`,`SlugSubCategoriaProducto`) values (1,'Rackeables',1,1,'rack'),(2,'Torre',1,1,'tower'),(3,'Disco',1,2,'hdd'),(4,'Cinta',1,2,'tape'),(5,'Full Tower',1,3,'full'),(6,'Mid Tower',1,3,'mid'),(7,'Mini Tower',1,3,'mini'),(8,'Slim Line Case',1,3,'slim'),(9,'Small Form Factor',1,3,'smal'),(10,'Workstation',1,4,'workstation'),(11,'Home',1,4,'home'),(12,'Lacer',1,5,'lacer'),(13,'Tinta',1,5,'tinta'),(14,'Matrizial',1,5,'matriz'),(15,'Ploter',1,5,'plotter'),(16,'red',1,5,'red'),(17,'Router',1,6,'router'),(18,'Router Administrable',1,6,'router_admin'),(19,'Switch',1,6,'switch'),(20,'Switch Administrable',1,6,'switch_admin'),(21,'Hub',1,6,'hub'),(22,'VoIP',1,6,'voip'),(23,'WiFi',1,6,'wifi'),(24,'Gabinetes',1,7,'gabinete'),(27,'FortiGate Network Security	',NULL,NULL,NULL);

UNLOCK TABLES;

/*Table structure for table `usuarioareacorreocontactenos` */

DROP TABLE IF EXISTS `usuarioareacorreocontactenos`;

CREATE TABLE `usuarioareacorreocontactenos` (
  `IdUsuario` int(11) DEFAULT NULL,
  `IdArea` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `usuarioareacorreocontactenos` */

LOCK TABLES `usuarioareacorreocontactenos` WRITE;

insert  into `usuarioareacorreocontactenos`(`IdUsuario`,`IdArea`) values (1,1),(2,1);

UNLOCK TABLES;

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

LOCK TABLES `usuariosistema` WRITE;

insert  into `usuariosistema`(`IdUsuario`,`NombreUsuario`,`LoginUsuario`,`PasswordUsuario`,`Correo`) values (1,'Nazart','nazartj@gmail.com','123456','nazartj@gmail.com'),(2,'Nazart','nazarjb@hotmail.com','123456','nazarjb@hotmail.com');

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
