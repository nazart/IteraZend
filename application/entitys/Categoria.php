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
class Application_Entity_Categoria extends CST_Entity{
    //put your code here
    public $_idArea;
    public $_nombre;
    public $_idCategoria;
    public $_flagActivo;
    public $_slug;
    
    public function __construct() {
        $this->_modelCategoria = new Application_Model_Categoria();
    }

    public function editCategoria(){
        $this->createSlug();
        $data = $this->setArrayBd();
        $this->_modelCategoria->editarCategoria($data,$this->_idCategoria);
    }
    private function setArrayBd(){
        $data['IdArea']=$this->_idArea;
        $data['NombreCategoriaProducto']=$this->_nombre;
        $data['flagActivoCategoriaProducto']=$this->_flagActivo;
        $data['SlugCategoriaProducto'] = $this->_slug;
        return $data;
    }
    public function createCategoria(){
        $this->createSlug();
        $data = $this->setArrayBd();
        $this->_modelCategoria->insertCategoria($data);
    }
    public function desactivarCategoria(){
        $data['flagActivoCategoriaProducto'] = 0;
        $this->_modelCategoria->editarCategoria($data,$this->_idCategoria);
    }
    public function activarCategoria(){
        $data['flagActivoCategoriaProducto'] = 1;
        $this->_modelCategoria->editarCategoria($data,$this->_idCategoria);
    }
    public function createSlug(){
        $filter = new CST_SeoUrl();
        $this->_slug =  $filter->filter(trim($this->_nombre), '-', 0);
    }
    
    public function eliminarCategoria(){
        
    }
    
    public function identifyCategoria($idCategoria){
      $dataCategoria = $this->_modelCategoria->getCategoria($idCategoria);
      $data['_idArea'] = $dataCategoria['IdArea'];
      $data['_nombre'] = $dataCategoria['NombreCategoriaProducto'];
      $data['_idCategoria'] = $dataCategoria['idCategoriaProducto'];
      $data['_flagActivo'] = $dataCategoria['flagActivoCategoriaProducto'];
      $this->setProperties($data);
    }
    static public function listarCategorias(){
        $modelCategoria = new Application_Model_Categoria();
        return $modelCategoria->listarCategorias();
    }
    
}

?>
