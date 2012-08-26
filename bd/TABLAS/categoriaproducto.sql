/*
SQLyog Enterprise - MySQL GUI
MySQL - 5.5.27 
*********************************************************************
*/
/*!40101 SET NAMES utf8 */;

create table `categoriaproducto` (
	`idCategoriaProducto` double ,
	`NombreCategoriaProducto` varchar (600),
	`flagActivoCategoriaProducto` double ,
	`IdArea` double ,
	`SlugCategoriaProducto` varchar (600)
); 
insert into `categoriaproducto` (`idCategoriaProducto`, `NombreCategoriaProducto`, `flagActivoCategoriaProducto`, `IdArea`, `SlugCategoriaProducto`) values('1','Servidores','1','1','servidores');
insert into `categoriaproducto` (`idCategoriaProducto`, `NombreCategoriaProducto`, `flagActivoCategoriaProducto`, `IdArea`, `SlugCategoriaProducto`) values('2','Storage','1','1','storage');
insert into `categoriaproducto` (`idCategoriaProducto`, `NombreCategoriaProducto`, `flagActivoCategoriaProducto`, `IdArea`, `SlugCategoriaProducto`) values('3','Desktop','1','1','desktop');
insert into `categoriaproducto` (`idCategoriaProducto`, `NombreCategoriaProducto`, `flagActivoCategoriaProducto`, `IdArea`, `SlugCategoriaProducto`) values('4','Portatiles','1','1','portatiles');
insert into `categoriaproducto` (`idCategoriaProducto`, `NombreCategoriaProducto`, `flagActivoCategoriaProducto`, `IdArea`, `SlugCategoriaProducto`) values('5','Impresoras','1','1','impresoras');
insert into `categoriaproducto` (`idCategoriaProducto`, `NombreCategoriaProducto`, `flagActivoCategoriaProducto`, `IdArea`, `SlugCategoriaProducto`) values('6','Comunicaciones','1','1','comunicaciones');
insert into `categoriaproducto` (`idCategoriaProducto`, `NombreCategoriaProducto`, `flagActivoCategoriaProducto`, `IdArea`, `SlugCategoriaProducto`) values('7','Accesorios','1','1','accesorios');
insert into `categoriaproducto` (`idCategoriaProducto`, `NombreCategoriaProducto`, `flagActivoCategoriaProducto`, `IdArea`, `SlugCategoriaProducto`) values('8',NULL,NULL,NULL,NULL);
