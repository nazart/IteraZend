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
    
    public function __construct() {
        $this->_modelCategoria = new Application_Model_Categoria();
    }


    public function createCategoria(){
        $data['IdArea']=$this->_idArea;
        $data['NombreCategoriaProducto']=$this->_nombre;
        $this->_modelCategoria->insertCategoria($data);
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
