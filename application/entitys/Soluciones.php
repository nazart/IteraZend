<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Transaccion
 *
 * @author Laptop
 */
class Application_Entity_Soluciones extends CST_Entity{
    //put your code here
    public $_idSoluciones;          
    public $_nombreSoluciones;          
    public $_descripcionSoluciones;          
    public $_idCategoriaSoluciones;          
    public $_slugSoluciones;          
    public $_imagenSoluciones;
    protected $_modelSoluciones;

    function __construct($dataUsuario = null) {
        parent::init($dataUsuario);
        $this->_modelSoluciones = new Application_Model_Soluciones();
        }
    
    function searchSolucion($slugSoluciones='',$idSoluciones=''){
        $datos = $this->_modelSoluciones->listarDetalleSoluciones($slugSoluciones);
        $this->_idSoluciones = $datos['IdSoluciones'];
        $this->_nombreSoluciones = $datos['NombreSoluciones'];
        $this->_descripcionSoluciones = $datos['DescripcionSoluciones'];
        $this->_idCategoriaSoluciones = $datos['IdCategoriaSoluciones'];
        $this->_slugSoluciones = $datos['SlugSoluciones'];
        $this->_imagenSoluciones  = $datos['ImagenSoluciones'];
    }
    
    function getSolucion(){
        return $this->getProperties();
    }

    
    static function listarArbolCategoriasSoluciones() {
        $modelSoluciones = new Application_Model_Soluciones();
        $arbol = $modelSoluciones->listarArbolCategoriaSoluciones();
        return self::listarCategoriaSolucionesArbol($arbol);
    }
    
    static function listarSoluciones(){
        $modelSoluciones = new Application_Model_Soluciones();
        return $modelSoluciones->arrayAsoccForFirstItem($modelSoluciones->listarArbolCategoriaSoluciones());
    }
    static function listarSolucionesDeUnaCategoria($slugCategoria){
        $modelSoluciones = new Application_Model_Soluciones();
        return $modelSoluciones->listarSolucionesDeUnaCategoria($slugCategoria);
    }


    private function listarCategoriaSolucionesArbol($arbol){
        $count = 0;
        $nombreArbol = '';
        $arbolReturn = array();
        foreach ($arbol as $index) {
            if ($nombreArbol != $index['NombreCategoriaSoluciones']) {
                $arbolReturn[$index['SlugCategoriaSolucion']]['label'] = $index['NombreCategoriaSoluciones'];
                $arbolReturn[$index['SlugCategoriaSolucion']]['uri'] = '/soluciones/'.$index['SlugCategoriaSolucion'];
                $arbolReturn[$index['SlugCategoriaSolucion']]['pages'] = self::listarSolucionesArbol($index['IdCategoriaSoluciones'],$arbol);
                $nombreArbol = $index['NombreCategoriaSoluciones'];
                $count++;
            }
        }
        return $arbolReturn;
    }
    
    private function listarSolucionesArbol($idCategoria,$arbol){
        $count = 0;
        $idAreaCategoria = '';
        $arbolReturn = array();
        foreach($arbol as $index){
            if($index['solucionCategoria']==$idCategoria){
                $arbolReturn[$index['SlugSoluciones']]['label']= $index['NombreSoluciones'];
                $arbolReturn[$index['SlugSoluciones']]['uri']= '/soluciones/'.$index['SlugCategoriaSolucion'].'/'.$index['SlugSoluciones'];
            }
        }
        return $arbolReturn;        
    }
    
}

?>
