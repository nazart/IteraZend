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
class Application_Entity_Producto extends CST_Entity{

    //put your code here

    public $_idProducto;              
    public $_nombreProducto;              
    public $_idArea;              
    public $_idCategoriaProducto;              
    public $_idSubCategoriaProducto;              
    public $_precioProducto;              
    public $_descricionCortaProducto;              
    public $_descricionProducto;              
    public $_slugProducto;              
    public $_idMarca;
    
    private $_modelProducto;
    
    
    function __construct($dataUsuario = null) {
       parent::init($dataUsuario);
       $this->_modelProducto = new Application_Model_Producto();
    }
    
    function searchProducto($slugProducto='',$idProducto=''){
        $datos = $this->_modelProducto->listarDetalleProducto($slugProducto);
        $this->_idProducto = $datos['IdProducto'];
        $this->_nombreProducto = $datos['NombreProducto'];
        $this->_idArea = $datos['IdArea'];
        $this->_idCategoriaProducto = $datos['IdCategoriaProducto'];
        $this->_idSubCategoriaProducto = $datos['IdSubCategoriaProducto'];
        $this->_precioProducto = $datos['PrecioProducto'];
        $this->_descricionCortaProducto = $datos['DescricionCortaProducto'];
        $this->_descricionProducto = $datos['DescricionProducto'];
        $this->_slugProducto = $datos['SlugProducto'];
        $this->_idMarca = $datos['IdMarca'];
    }
    function getImagenes(){
        if($this->_idProducto==''){
            return false; 
        }
        $imagenes = $this->_modelProducto->listarImagenes($this->_idProducto);
        return $imagenes;
    }
    
    function setProducto($slugProducto){
        if($idProducto!=''){
            $data = self::searchProducto($idProducto);
            
            }else{
//            if(empty ($datos)){
//                $this->_nombreProducto = isset($datos['nombreProducto'])?'':($datos['nombreProducto']!=''?$datos['nombreProducto']:'');
//                $this->_idArea = isset($datos['idArea'])?'':($datos['idArea']!=''?$datos['idArea']:'');
//                $this->_idCategoriaProducto = isset($datos['idCategoriaProducto'])?'':($datos['idCategoriaProducto']!=''?$datos['idCategoriaProducto']:'');
//                $this->_idSubCategoriaProducto = isset($datos['idSubCategoriaProducto'])?'':($datos['idSubCategoriaProducto']!=''?$datos['idSubCategoriaProducto']:'');
//                $this->_precioProducto = isset($datos['precioProducto'])?'':($datos['precioProducto']!=''?$datos['precioProducto']:'');
//                $this->_descricionCortaProducto = isset($datos['descricionCortaProducto'])?'':($datos['descricionCortaProducto']!=''?$datos['descricionCortaProducto']:'');
//                $this->_slugProducto = isset($datos['slugProducto'])?'':($datos['slugProducto']!=''?$datos['slugProducto']:'');
//                $this->_idMarca = isset($datos['idMarca'])?'':($datos['idMarca']!=''?$datos['idMarca']:'');
//            }
//        }
        }
    }
    
    
    function getProducto(){
        return $this->getProperties();
    }
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
