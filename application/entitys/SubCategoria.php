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
class Application_Entity_SubCategoria extends CST_Entity {

    //put your code here
    public $_idSubCategoria;
    public $_nombre;
    public $_idCategoria;
    public $_flagActivo;
    public $_slug;

    public function __construct() {
        $this->_modelSubCategoria = new Application_Model_SubCategoria();
    }

    public function editSubCategoria() {
        $this->createSlug();
        $data = $this->setArrayBd();
        $this->_modelSubCategoria->editarSubCategoria($data, $this->_idSubCategoria);
    }

    private function setArrayBd() {
        $data['NombreSubCategoriaProducto'] = $this->_nombre;
        $data['flagActivoSubCategoriaProducto'] = $this->_flagActivo;
        $data['IdCategoriaProducto'] = $this->_idCategoria;
        $data['SlugSubCategoriaProducto'] = $this->_slug;
        return $data;
    }

    public function createSubCategoria() {
        $this->createSlug();
        $data = $this->setArrayBd();
        $this->_modelSubCategoria->insertSubCategoria($data);
    }

    public function desactivarSubCategoria() {
        $data['flagActivoSubCategoriaProducto'] = 0;
        $this->_modelSubCategoria->editarSubCategoria($data, $this->_idSubCategoria);
    }

    public function activarSubCategoria() {
        $data['flagActivoSubCategoriaProducto'] = 1;
        $this->_modelSubCategoria->editarSubCategoria($data, $this->_idSubCategoria);
    }

    public function createSlug() {
        $filter = new CST_SeoUrl();
        $this->_slug = $filter->filter(trim($this->_nombre), '-', 0);
    }

    public function eliminarSubCategoria() {
        
    }

    public function identifySubCategoria($idSubCategoria) {
        $dataSubCategoria = $this->_modelSubCategoria->getSubCategoria($idSubCategoria);
        //print_r($dataSubCategoria);
        //exit;
        $data['_idSubCategoria'] = $dataSubCategoria['idSubCategoriaProducto'];
        $data['_nombre'] = $dataSubCategoria['NombreSubCategoriaProducto'];
        $data['_idCategoria'] = $dataSubCategoria['IdCategoriaProducto'];
        $data['_flagActivo'] = $dataSubCategoria['flagActivoSubCategoriaProducto'];
        $this->setProperties($data);
    }

    static public function listarSubCategorias() {
        $modelSubCategoria = new Application_Model_SubCategoria();
        return $modelSubCategoria->listarSubCategorias();
    }

}

?>
