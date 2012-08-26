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
class Application_Entity_CategoriaSolucion extends CST_Entity{
    //put your code here
    public $_idArea;
    public $_nombre;
    public $_idCategoriaSolucion;
    public $_flagActivo;
    public $_slug;
    
    public function __construct() {
        $this->_modelCategoriaSolucion = new Application_Model_CategoriaSolucion();
    }

    public function editCategoriaSolucion(){
        $this->createSlug();
        $data = $this->setArrayBd();
        $this->_modelCategoriaSolucion->editarCategoriaSolucion($data,$this->_idCategoriaSolucion);
    }
    private function setArrayBd(){
        $data['IdArea']=$this->_idArea;
        $data['NombreCategoriaSolucionProducto']=$this->_nombre;
        $data['flagActivoCategoriaSolucionProducto']=$this->_flagActivo;
        $data['SlugCategoriaSolucionProducto'] = $this->_slug;
        return $data;
    }
    public function createCategoriaSolucion(){
        $this->createSlug();
        $data = $this->setArrayBd();
        $this->_modelCategoriaSolucion->insertCategoriaSolucion($data);
    }
    public function desactivarCategoriaSolucion(){
        $data['flagActivoCategoriaSolucionProducto'] = 0;
        $this->_modelCategoriaSolucion->editarCategoriaSolucion($data,$this->_idCategoriaSolucion);
    }
    public function activarCategoriaSolucion(){
        $data['flagActivoCategoriaSolucionProducto'] = 1;
        $this->_modelCategoriaSolucion->editarCategoriaSolucion($data,$this->_idCategoriaSolucion);
    }
    public function createSlug(){
        $filter = new CST_SeoUrl();
        $this->_slug =  $filter->filter(trim($this->_nombre), '-', 0);
    }
    
    public function eliminarCategoriaSolucion(){
        
    }
    
    public function identifyCategoriaSolucion($idCategoriaSolucion){
      $dataCategoriaSolucion = $this->_modelCategoriaSolucion->getCategoriaSolucion($idCategoriaSolucion);
      $data['_idArea'] = $dataCategoriaSolucion['IdArea'];
      $data['_nombre'] = $dataCategoriaSolucion['NombreCategoriaSolucionProducto'];
      $data['_idCategoriaSolucion'] = $dataCategoriaSolucion['idCategoriaSolucionProducto'];
      $data['_flagActivo'] = $dataCategoriaSolucion['flagActivoCategoriaSolucionProducto'];
      $this->setProperties($data);
    }
    static public function listarCategoriaSolucion(){
        $modelCategoriaSolucion = new Application_Model_CategoriaSolucion();
        return $modelCategoriaSolucion->listarCategoriaSolucions();
    }
    
}

?>
