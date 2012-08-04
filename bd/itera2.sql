/*
SQLyog Enterprise - MySQL GUI v8.02 RC
MySQL - 5.5.16 : Database - itera
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
  PRIMARY KEY (`IdArea`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `area` */

insert  into `area`(`IdArea`,`NombreArea`,`ImagenArea`,`DescripcionCortaArea`,`SlugArea`) values (1,'HARDWARE','banner-eset-smartsecurity-home.jpg','DESCRIPCION','area1'),(2,'FIREWALL & ANTIVIRUS','banner-eset-smartsecurity-home.jpg','DESCRIPCION','area2'),(3,'SOFWARE & BACKUP','banner-eset-smartsecurity-home.jpg','DESCRIPCION','area3');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `banner` */

insert  into `banner`(`IdBanner`,`NombreBanner`,`DescripcionBanner`,`ImagenBanner`,`UrlBanner`,`OrdenBanner`,`EstadoBanner`) values (1,'uno','helpeople','helpeople.png',NULL,1,1),(2,'dos','endpoint\r\n','endpoint-header.png',NULL,NULL,NULL),(3,'tres','webmonitor\r\n','webmonitor.png',NULL,NULL,NULL);

/*Table structure for table `categoriaproducto` */

DROP TABLE IF EXISTS `categoriaproducto`;

CREATE TABLE `categoriaproducto` (
  `idCategoriaProducto` int(11) NOT NULL AUTO_INCREMENT,
  `NombreCategoriaProducto` char(200) DEFAULT NULL,
  `flagActivoCategoriaProducto` bigint(1) DEFAULT NULL,
  `IdArea` int(11) DEFAULT NULL,
  `SlugCategoriaProducto` char(200) DEFAULT NULL,
  PRIMARY KEY (`idCategoriaProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `categoriaproducto` */

insert  into `categoriaproducto`(`idCategoriaProducto`,`NombreCategoriaProducto`,`flagActivoCategoriaProducto`,`IdArea`,`SlugCategoriaProducto`) values (1,'Servidores',1,1,'categoria1'),(2,'Storage',1,1,'categoria2'),(3,'Desktop',1,1,'categoria3'),(4,'Portatiles',1,1,'categoria4'),(5,'Impresoras',1,1,'categoria5'),(6,'Comunicaciones',1,1,'categoria6'),(7,'Software',1,1,NULL),(8,'Fortinet',1,2,NULL),(9,'ESET',1,2,NULL);

/*Table structure for table `categoriasoluciones` */

DROP TABLE IF EXISTS `categoriasoluciones`;

CREATE TABLE `categoriasoluciones` (
  `IdCategoriaSoluciones` int(11) NOT NULL AUTO_INCREMENT,
  `NombreCategoriaSoluciones` char(200) DEFAULT NULL,
  `DescripcionCategoriaSoluciones` text,
  `SlugCategoriaSolucion` char(200) DEFAULT NULL,
  PRIMARY KEY (`IdCategoriaSoluciones`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `categoriasoluciones` */

insert  into `categoriasoluciones`(`IdCategoriaSoluciones`,`NombreCategoriaSoluciones`,`DescripcionCategoriaSoluciones`,`SlugCategoriaSolucion`) values (1,'categoria solucion1',NULL,'categoria-solucion-uno'),(2,'categoria solucion2',NULL,'categoria-solucion-dos'),(3,'categoria solucion3',NULL,'categoria-solucion-tres');

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

insert  into `core_session`(`Id`,`save_path`,`name`,`Modified`,`LifeTime`,`Data`) values ('0vgl52mpfns5rr1cobkdfo3re4','','',1344017047,1440,''),('u8o8btskcdm1sm3qs3r5saom85','','',1343941730,1440,'');

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

insert  into `paginainterna`(`IdPaginaInterna`,`NombrePaginaInterna`,`ContenidoPaginaInterna`,`UrlPaginaInterna`) values (1,'Nosotros','<div style=\"width: 984px; float: left;\">\r\n    <div style=\"float: left; width: 246px;\">\r\n        <div id=\"imCell_2\" class=\"imGrid[1, 1]\">\r\n            <div id=\"imCellStyleGraphics_2\"></div>\r\n            <div id=\"imCellStyle_2\">\r\n                <div id=\"imTextObject_2\" style=\"text-align: left;\">\r\n                    <p style=\"text-align: left;\">\r\n                        <span class=\"ff2 cf3 fs22\"><b>MISION:</b></span>\r\n                        <b><span class=\"fs20 cf1 ff2\"><br /></span></b>\r\n                        <span class=\"fs18 cf0 ff2\">\r\n                            <br />Asistir y acompa&#241;ar a las empresas que buscan fortalecer su competitividad y mejorar sus procesos de negocios \r\n                            <br />mediante la incorporaci&#243;n de lo </span>\r\n                        <span class=\"cf1 fs18 ff2\">&#250;ltimo en tecnolog&#237;as de la informaci&#243;n, infraestructura y mejores pr&#225;cticas.</span>\r\n                        <span class=\"cf0 fs18 ff2\"> <br /></span></p>\r\n                    <p style=\"text-align: justify;\"><span class=\"ff2 cf0 fs18\"><br /></span></p>\r\n                    <p style=\"text-align: center;\">\r\n                        <span class=\"ff2 cf3 fs18\">-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr></span>\r\n                        <span class=\"cf1 ff2 fs18\"><br /></span>\r\n                        <span class=\"fs20 cf3 ff2\"><b><br /></b></span></p><p style=\"text-align: left;\">\r\n                        <span class=\"ff2 cf3 fs22\"><b>VISION:</b></span><b><span class=\"fs18 cf1 ff2\"><br /></span></b>\r\n                        <span class=\"cf0 fs18 ff2\"><br /></span><span class=\"fs20 cf0 ff2\">Ser el proveedor de referencia l&#237;der en la aplicaci&#243;n de Soluciones Tecnol&#243;gicas, mediante el desarrollo de relaciones de largo plazo con nuestros &nbsp;clientes, ofreciendo excelencia en el servicio y superando las expectativas de valor agregado. </span><span class=\"fs18 cf1 ff2\"><br /></span><span class=\"cf3 fs18 ff2\"><br /></span></p><p style=\"text-align: center;\"><span class=\"ff2 cf3 fs18\">-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr></span><span class=\"cf1 ff2 fs18\"><br /></span><span class=\"fs20 cf3 ff2\"><b><br /></b></span></p><p style=\"text-align: left;\"><span class=\"ff2 cf3 fs22\"><b>VALORES:</b></span><b><span class=\"fs20 ff2 cf3\"><br /></span><span class=\"cf0 fs20 ff2\"><br /></span></b></p><ul><li><p style=\"text-align: left;\"><span class=\"ff2 cf0 fs20\"><b> </b>Honestidad<br /></span></p></li><li><p style=\"text-align: left;\"><span class=\"ff2 cf0 fs20\"><span class=\"ff2\"> Respeto<br /></span></span></p></li><li><p style=\"text-align: left;\"><span class=\"ff2 cf0 fs20\"><span class=\"ff2\"><span class=\"ff2\"> Excelencia <br /></span></span></span></p></li><li><p style=\"text-align: left;\"><span class=\"ff2 cf0 fs20\"><span class=\"ff2\"><span class=\"ff2\"><span class=\"ff2\"> Calidad<br /></span></span></span></span></p></li><li><p style=\"text-align: left;\"><span class=\"ff2 cf0 fs20\"><span class=\"ff2\"><span class=\"ff2\"><span class=\"ff2\"><span class=\"ff2\"> Creatividad<br /></span></span></span></span></span></p></li><li><p style=\"text-align: left;\"><span class=\"ff2 cf0 fs20\"><span class=\"ff2\"><span class=\"ff2\"><span class=\"ff2\"><span class=\"ff2\"><span class=\"ff2\"> Progreso<br /></span></span></span></span></span></span></p></li><li><p style=\"text-align: left;\"><span class=\"ff2 cf0 fs20\"><span class=\"ff2\"><span class=\"ff2\"><span class=\"ff2\"><span class=\"ff2\"><span class=\"ff2\"><span class=\"ff2\"> Deseo de Innovar<br /></span></span></span></span></span></span></span></p></li></ul><p style=\"text-align: left;\"><span class=\"fs18 ff2 cf0\"><br /></span></p><p style=\"text-align: center;\"><span class=\"ff2 cf3 fs18\">-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr>-<wbr></span>\r\n                        <span class=\"cf0 ff2 fs18\"><br /><br /></span>\r\n                        <span class=\"fs24 cf3 ff2\"><b>www.itera.com.pe</b></span><span class=\"fs18 cf0 ff3\"><br /></span></p></div></div></div>\r\n    </div>\r\n    <div style=\"float: left; width: 738px;\">\r\n        <div id=\"imCell_1\" class=\"imGrid[1, 1]\">\r\n            <div id=\"imCellStyleGraphics_1\"></div>\r\n            <div id=\"imCellStyle_1\"><div id=\"imTextObject_1\" style=\"text-align: left;\"><p style=\"text-align: justify;\">\r\n                        <span class=\"ff2 cf3 fs22\"><b>ITERA S.A.C: <br /></b></span>\r\n                        <b><span class=\"cf0 ff2 fs22\"><br /></span></b>\r\n                        <span class=\"fs18 cf0 ff2\">Es una empresa proveedora de soluciones y servicios, asados fundamentalmente en la utlizaci&#243;n de Tecnolog&#237;as para el correcto desarrollo &nbsp;de los negocios. La finalidad de la empresa es brindar productos y servicios de alta calidad, con soporte t&#233;cnico especializado permanentemente y un servicio de post-<wbr>venta eficaz. Nuestras soluciones son aplicables en todos los rubros y abarcan desde &nbsp;la etapa de an&#225;lisis y consultoria estrat&#233;gica, dise&#241;o y puesta en marca del proyecto, hasta el posterior soporte y mantenimiento.<br /><br /><b><br /></b></span><b><span class=\"fs22 cf3 ff2\">OBJETIVOS:<br /></span></b><span class=\"cf0 fs22 ff2\"><br /></span></p><ul><li><p style=\"text-align: justify;\"><span class=\"fs18 ff2 cf0\">Aplicar las correctas Soluciones Tecnol&#243;gicas para crear una plataforma eficiente en donde se pueda desarrollar con mayor productividad a las actividades a la que se dedica su empresa.<br /></span></p></li><li><p style=\"text-align: justify;\"><span class=\"ff2 cf0 fs18\">Combinamos experiencia, capacidad, conocimiento e investigaci&#243;n de nuevas tendencias y tecnolog&#237;as para explotar al m&#225;ximo las capacidades &nbsp;de su compa&#241;ia.<br /></span></p></li></ul><p style=\"text-align: center;\"><span class=\"fs18 ff2 cf0\"> <br /></span><span class=\"fs24 cf4 ff3\"><br /></span></p><p style=\"text-align: center; padding-left: 30px;\"><span class=\"ff2 cf0 fs18\"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class=\"fs20 ff0 cf0\"><img src=\"public\\static\\images\\itera.jpg\" style=\"width: 543px; height: 385px;\" alt=\"\" title=\"\"/></span>\r\n                        <span class=\"fs18 cf4 ff4\">\r\n                            <span class=\"imUl\"><br /></span></span><span class=\"fs20 cf3 ff4\"><b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n                                <a href=\"files/.pdf\" target=\"_blank\" class=\"imCssLink\">Descargar nuestra Carpeta de Presentaci&#243;n</a> </b></span>\r\n                    </p>\r\n                    <p style=\"text-align: center; padding-left: 30px;\">\r\n                        <span class=\"cf0 ff3 fs20\"><b><br /></b></span></p><p style=\"text-align: left;\">\r\n                        <span class=\"fs20 ff3 cf0\"><b><br /></b></span></p><p style=\"text-align: center;\">\r\n                        <span class=\"ff2 cf0 fs18\"><br /><br /></span></p></div></div></div>\r\n    </div>\r\n</div>','/nosotros');

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
  PRIMARY KEY (`IdProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `producto` */

insert  into `producto`(`IdProducto`,`NombreProducto`,`IdArea`,`IdCategoriaProducto`,`IdSubCategoriaProducto`,`PrecioProducto`,`DescricionCortaProducto`,`SlugProducto`) values (1,'Caramelo',1,1,1,NULL,NULL,NULL),(2,'Azucar',2,3,NULL,NULL,NULL,NULL);

/*Table structure for table `soluciones` */

DROP TABLE IF EXISTS `soluciones`;

CREATE TABLE `soluciones` (
  `IdSoluciones` int(11) NOT NULL AUTO_INCREMENT,
  `NombreSoluciones` char(200) DEFAULT NULL,
  `DescripcionSoluciones` text,
  `IdCategoriaSoluciones` int(11) DEFAULT NULL,
  `SlugSoluciones` char(200) DEFAULT NULL,
  PRIMARY KEY (`IdSoluciones`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `soluciones` */

insert  into `soluciones`(`IdSoluciones`,`NombreSoluciones`,`DescripcionSoluciones`,`IdCategoriaSoluciones`,`SlugSoluciones`) values (1,'Infraestructura','DESCRIPCION',1,'solucion-uno'),(2,'Seguridad y Proteccion de datos','DESCRIPCION',1,'solucion-dos'),(3,'Backup & Disaster Recovery','DESCRIPCION',2,'solucion-tres'),(4,'Soluciones de Infraestructura','DESCRIPCION',2,'solucion-cuatro');

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
