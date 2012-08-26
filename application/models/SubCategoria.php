<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of SubCategoria
 *
 * @author Laptop
 */
class Application_Model_SubCategoria {

    //put your code here
    private $_modelSubCategoria;
    private $_modelCategoria;

    function __construct() {
        $this->_modelSubCategoria = new Application_Model_TableBase_SubCategoriaProducto();
        $this->_modelCategoria = new Application_Model_TableBase_Categoria();
    }

    function insertSubCategoria($data) {
        $this->_modelSubCategoria->insert($data);
        return $this->_modelSubCategoria->getAdapter()->lastInsertId();
    }
    function editarSubCategoria($data,$idSubCategoria) {
        $where   = $this->_modelSubCategoria->getAdapter()->quoteInto('idSubCategoriaProducto =?',$idSubCategoria);
        return $this->_modelSubCategoria->update($data,$where);
    }

    function listarSubCategoriasActivas() {
        return $this->_modelSubCategoria
                        ->getAdapter()
                        ->select()
                        ->from(array('subcat' => $this->_modelSubCategoria->getName()), 
                                array(
                                    'subcat.idSubCategoriaProducto',
                                    'subcat.NombreSubCategoriaProducto',
                                    'subcat.flagActivoSubCategoriaProducto',
                                    'subcat.IdCategoriaProducto',
                                    'subcat.SlugSubCategoriaProducto',
                                )
                        )
                        ->where('subcat.flagActivoSubCategoriaProducto = 1')
                        ->order('IdPadre')
                        ->query()->fetchAll()
        ;
    }

    function getSubCategoria($idSubCategoria) {
        return $this->_modelSubCategoria
                        ->getAdapter()
                        ->select()
                        ->from(array(
                            'subcat' => $this->_modelSubCategoria->getName()), 
                                array('subcat.idSubCategoriaProducto',
                                    'subcat.NombreSubCategoriaProducto',
                                    'subcat.flagActivoSubCategoriaProducto',
                                    'subcat.IdCategoriaProducto',
                                    'subcat.SlugSubCategoriaProducto',
                                )
                        )
                ->where('subcat.idSubCategoriaProducto = ?',$idSubCategoria)
                ->query()->fetch();
        
    }

    function listarSubCategorias() {
        return $this->_modelSubCategoria
                        ->getAdapter()
                        ->select()
                        ->from(array(
                            'subcat' => $this->_modelSubCategoria->getName()), 
                                array('subcat.idSubCategoriaProducto',
                                    'subcat.NombreSubCategoriaProducto',
                                    'subcat.flagActivoSubCategoriaProducto',
                                    'cat.NombreCategoriaProducto',
                                )
                        )->join(array('cat' => $this->_modelCategoria->getName()), 
                                'subcat.IdCategoriaProducto = cat.idCategoriaProducto')
                        ->query()->fetchAll();
    }

}

?>
