CREATE TABLE `ftx_utf8` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `col1` VARCHAR(45) NOT NULL,
  `col2` TEXT NOT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `FTX` (`col1`,`col2`)
) ENGINE=MYISAM DEFAULT CHARSET=utf8

SELECT idSlug,NombreSlug, MATCH(NombreSlug) AGAINST ('"proliant microserver"') AS match1
FROM slug HAVING match1>0 ORDER BY 2 DESC 

