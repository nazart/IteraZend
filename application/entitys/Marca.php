<?php

class Application_Entity_Marca {
    //put your code here
    static function listarMarcaSociadasProducto($limit=''){
        $modelMarca = new Application_Model_Marca();
        return $modelMarca->listarMarcasSociadasProducto($limit);
    }
    static function listarMarcasAsociadasProductoDestacados($limit =''){
        $modelMarca = new Application_Model_Marca();
        return $modelMarca->listarMarcasSociadasProductoDestacados($limit);
    }
    
    static function listarMarcas($limit='')
    {
        $modelMarca = new Application_Model_Marca();
        return $modelMarca->listarMarcas();
    }
}
