<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of producto
 *
 * @author Laptop
 */
class Application_Entity_Producto {

    //put your code here



    static function listarArbolCategoriasProductos() {
        $modelProducto = new Application_Model_Producto();
        $arbol = $modelProducto->listarArbolCategoriaProducto();
        return self::listarAreasArbol($arbol);
    }
    static function listarTodosLosProductos($slugMarca=''){
        
        $modelProducto = new Application_Model_Producto();
        return $modelProducto->listarTodosProductos($slugMarca);
    }
    static function listarProductosArea($slugArea,$slugMarca=''){
        $modelProducto = new Application_Model_Producto();
        return $modelProducto->listarProductosArea($slugArea,'',$slugMarca);
    }
    static function listarProductosCategoria($slugCategoria,$slugMarca=''){
        $modelProducto = new Application_Model_Producto();
        return $modelProducto->listarProductosCategoria($slugCategoria,'',$slugMarca);
    }
    static function listarProductosSubCategoria($slugSubCategoria,$slugMarca=''){
        $modelProducto = new Application_Model_Producto();
        return $modelProducto->listarProductosSubcategoria($slugSubCategoria,'',$slugMarca);
    }
    static function buscarProductos($slugBusqueda){
        $modelProducto = new Application_Model_Producto();
        $productos = $modelProducto->buscarProductos($slugBusqueda);
        return $productos;
    }

    private function listarAreasArbol($arbol) {
        $count = 0;
        $nombreArbol = '';
        $arbolReturn = array();
        foreach ($arbol as $index) {
            if ($nombreArbol != $index['NombreArea']) {
                $arbolReturn[$index['SlugArea']]['label'] = $index['NombreArea'];
                $arbolReturn[$index['SlugArea']]['uri'] = '/productos/'.$index['SlugArea'];
                $arbolReturn[$index['SlugArea']]['pages'] = self::listarCategoriasAreaArbol($index['IdArea'],$arbol);
                $arbolReturn[$index['SlugArea']]['class'] = 'MenuSectionArea';
                $nombreArbol = $index['NombreArea'];
                $count++;
            }
        }
        return $arbolReturn;
    }
    private function listarCategoriasAreaArbol($area,$arbol){
        $count = 0;
        $idAreaCategoria = '';
        $arbolReturn = array();
        foreach($arbol as $index){
            if($idAreaCategoria!=$index['IdAreaCategoria'] && $index['IdAreaCategoria']==$area){
                $arbolReturn[$index['SlugCategoriaProducto']]['label']= $index['NombreCategoriaProducto'];
                $arbolReturn[$index['SlugCategoriaProducto']]['uri']= '/productos/'.$index['SlugArea'].'/'.$index['SlugCategoriaProducto'];
                $arbolReturn[$index['SlugCategoriaProducto']]['pages']= self::listarSubcategoriaCategoriaArbol($index['IdCategoriaProducto'], $arbol);
            }
        }
        return $arbolReturn;
    
    }
    private function listarSubcategoriaCategoriaArbol($idCategoria,$arbol){
        $count = 0;
        $idCategoriaSubcategoria = '';
        $arbolReturn = array();
        foreach($arbol as $index){
            if($idCategoriaSubcategoria != $index['IdCategoriaSubcategoria'] && $index['IdCategoriaSubcategoria']==$idCategoria){
                $arbolReturn[$index['SlugSubCategoriaProducto']]['label']= $index['NombreSubCategoriaProducto'];
                $arbolReturn[$index['SlugSubCategoriaProducto']]['uri']= '/productos/'.$index['SlugArea'].'/'.$index['SlugCategoriaProducto'].'/'.$index['SlugSubCategoriaProducto'];
            }
        }
        return $arbolReturn;
    
    }

}

?>
