/*
SQLyog Enterprise - MySQL GUI
MySQL - 5.5.27 
*********************************************************************
*/
/*!40101 SET NAMES utf8 */;

create table `categoriasoluciones` (
	`IdCategoriaSoluciones` double ,
	`NombreCategoriaSoluciones` varchar (600),
	`DescripcionCategoriaSoluciones` blob ,
	`SlugCategoriaSolucion` varchar (600),
	`ImagenCategoriaSoluciones` varchar (600)
); 
insert into `categoriasoluciones` (`IdCategoriaSoluciones`, `NombreCategoriaSoluciones`, `DescripcionCategoriaSoluciones`, `SlugCategoriaSolucion`, `ImagenCategoriaSoluciones`) values('1','Backup y Data Management',NULL,'categoria-solucion-uno','imagenuno.jpg');
insert into `categoriasoluciones` (`IdCategoriaSoluciones`, `NombreCategoriaSoluciones`, `DescripcionCategoriaSoluciones`, `SlugCategoriaSolucion`, `ImagenCategoriaSoluciones`) values('2','Infraestructura IT',NULL,'categoria-solucion-dos','imagendos.jpg');
insert into `categoriasoluciones` (`IdCategoriaSoluciones`, `NombreCategoriaSoluciones`, `DescripcionCategoriaSoluciones`, `SlugCategoriaSolucion`, `ImagenCategoriaSoluciones`) values('3','Seguridad Web y Correo',NULL,'categoria-solucion-tres','imagentres.jpg');
insert into `categoriasoluciones` (`IdCategoriaSoluciones`, `NombreCategoriaSoluciones`, `DescripcionCategoriaSoluciones`, `SlugCategoriaSolucion`, `ImagenCategoriaSoluciones`) values('4','Seguridad Amenazas y Endpoint',NULL,NULL,NULL);
insert into `categoriasoluciones` (`IdCategoriaSoluciones`, `NombreCategoriaSoluciones`, `DescripcionCategoriaSoluciones`, `SlugCategoriaSolucion`, `ImagenCategoriaSoluciones`) values('5','Service Management & Helpdesk',NULL,NULL,NULL);
