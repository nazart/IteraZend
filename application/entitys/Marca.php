<?php

class Application_Entity_Marca extends CST_Entity{
    //put your code here
    public $_idMarca;
    public $_nombreMarca;    
    public $_slug;
    
    public function __construct() 
    {
        $this->_modelMarca = new Application_Model_Marca();
    }
    public function editMarca(){
        $this->createSlug();
        $data = $this->setArrayBd();
        $this->_modelCategoria->editarCategoria($data,$this->_idCategoria);
    }
    private function setArrayBd(){        
        $data['NombreMarca']=$this->_nombreMarca;        
        $data['SlugMarca'] = $this->_slug;
         return $data;
    }
    public function createMarca(){
        $this->createSlug();
        $data = $this->setArrayBd();
        $this->_modelMarca->insertMarca($data);
    }
    static function listarMarcaSociadasProducto($limit='')
    {        
        return $this->_modelMarca->listarMarcasSociadasProducto($limit);
    }
    static function listarMarcasAsociadasProductoDestacados($limit ='')
    {        
        return $this->_modelMarca->listarMarcasSociadasProductoDestacados($limit);
    }
    
    static function listarMarcas($limit='')
    {
        $modelMarca = new Application_Model_Marca();
        return $modelMarca->listarMarcas();
    }
    public function createSlug(){
        $filter = new CST_SeoUrl();
        $this->_slug =  $filter->filter(trim($this->_nombreMarca), '-', 0);
    }
}
