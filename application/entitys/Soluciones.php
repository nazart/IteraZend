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
    public $_id;          
    public $_nombre;          
    public $_descripcion;          
    public $_descripcionCorta;          
    public $_idCategoria;          
    public $_flagActivo;          
    public $_slug;          
    public $_imagen;
    
    private $_modelSoluciones;

    function __construct($dataUsuario = null) {
        parent::init($dataUsuario);
        $this->_modelSoluciones = new Application_Model_Soluciones();
        }
    
    public function editSoluciones(){
        $this->createSlug();
        $data = $this->setArrayBd();
        $this->_modelSoluciones->editarSoluciones($data,$this->_id);
    }   
    
    public function createSoluciones(){
        $this->createSlug();
        $data = $this->setArrayBd();
        $this->_modelSoluciones->insertSoluciones($data);
    }
    public function desactivarSoluciones(){
        $data['flagActivoCategoriaProducto'] = 0;
        $this->_modelSoluciones->editarCategoria($data,$this->_idCategoria);
    }
    public function activarSoluciones(){
        $data['flagActivoCategoriaProducto'] = 1;
        $this->_modelSoluciones->editarCategoria($data,$this->_idCategoria);
    }
    public function createSlug(){
        $filter = new CST_SeoUrl();
        $this->_slug =  $filter->filter(trim($this->_nombre), '-', 0);
    }
    
    public function eliminarSoluciones(){
        
    }
    
    /*----------------*/
    private function setArrayBd(){
        $data['IdSoluciones']=$this->_id;
        $data['DescripcionSoluciones']=$this->_descripcion;
        $data['DescripcionCortaSoluciones']=$this->_descripcionCorta;
        $data['FlagActivoSoluciones']=$this->_flagActivo;
        $data['IdCategoriaSoluciones']=$this->_idCategoria;
        $data['ImagenSoluciones'] = $this->_imagen;
        $data['NombreSoluciones'] = $this->_nombre;
        $data['SlugSoluciones'] = $this->_slug;
        return $data;
    }
        
        
    function searchSolucion($slugSoluciones='',$idSoluciones=''){
        $datos = $this->_modelSoluciones->listarDetalleSoluciones($slugSoluciones,$idSoluciones);
        $this->_id = $datos['IdSoluciones'];
        $this->_nombre = $datos['NombreSoluciones'];
        $this->_descripcion = $datos['DescripcionSoluciones'];
        $this->_flagActivo = $datos['FlagActivoSoluciones'];
        $this->_descripcionCorta = $datos['DescripcionCortaSoluciones'];
        $this->_idCategoria = $datos['IdCategoriaSoluciones'];
        $this->_slug = $datos['SlugSoluciones'];
        $this->_imagen  = $datos['ImagenSoluciones'];
    }
    
    function getSolucion(){
        return $this->getProperties();
    }

    
    static function listarArbolCategoriasSoluciones() {
        $modelSoluciones = new Application_Model_Soluciones();
        $arbol = $modelSoluciones->listarArbolCategoriaSoluciones();
        return self::listarCategoriaSolucionesArbol($arbol);
    }
    static function listarAllSoluciones(){
        $modelSoluciones = new Application_Model_Soluciones();
        return $modelSoluciones->listarSoluciones();
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
                $arbolReturn[$index['SlugCategoriaSolucion']]['uri'] = CST_Server_ServerBaseUrl::getUrl().'/soluciones/'.$index['SlugCategoriaSolucion'];
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
                $arbolReturn[$index['SlugSoluciones']]['uri']= CST_Server_ServerBaseUrl::getUrl().'/soluciones/'.$index['SlugCategoriaSolucion'].'/'.$index['SlugSoluciones'];
            }
        }
        return $arbolReturn;        
    }
    
}

?>
