SELECT DISTINCT ttemp.IdProducto,ttemp.NombreProducto FROM (SELECT DISTINCT 
`pr`.`IdProducto`, 
`pr`.`NombreProducto`, 
`pr`.`IdArea`, 
`pr`.`IdCategoriaProducto`, 
`pr`.`IdSubCategoriaProducto`, 
`pr`.`DescricionCortaProducto`, 
(SELECT  MATCH(NombreSlug) AGAINST ('"microserver"') AS match1
FROM slug  AS slug2 WHERE slug2.IdSlug=sl.IdSlug) AS match2,
`pr`.`SlugProducto` 
FROM `producto` AS `pr` INNER JOIN `detalleslug` AS `dts` ON pr.IdProducto = dts.IdProducto 
INNER JOIN `slug` AS `sl` ON sl.IdSlug = dts.IdSlug HAVING match2>0 ORDER BY match2 DESC ) ttemp