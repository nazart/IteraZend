<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Categoria
 *
 * @author Laptop
 */
class Application_Model_Categoria {

    //put your code here
    private $_modelCategoria;
    private $_modelArea;

    function __construct() {
        $this->_modelCategoria = new Application_Model_TableBase_Categoria();
        $this->_modelArea = new Application_Model_TableBase_Area();
    }

    function insertCategoria($data) {
        $this->_modelCategoria->insert($data);
        return $this->_modelCategoria->getAdapter()->lastInsertId();
    }
    function editarCategoria($data,$idCategoria) {
        $where   = $this->_modelCategoria->getAdapter()->quoteInto('idCategoriaProducto =?',$idCategoria);
        return $this->_modelCategoria->update($data,$where);
    }

    function listarCategoriasActivas() {
        return $this->_modelCategoria
                        ->getAdapter()
                        ->select()
                        ->from(array('cat' => $this->_modelCategoria->getName()), array('cat.IdCategoria',
                            'cat.Nombre',
                            'cat.IdPadre',
                            'cat.Slug',
                                )
                        )
                        ->where('cat.Estado = 1')
                        ->order('IdPadre')
                        ->query()->fetchAll()
        ;
    }

    function getCategoria($idCategoria) {
        return $this->_modelCategoria
                        ->getAdapter()
                        ->select()
                        ->from(array(
                            'cat' => $this->_modelCategoria->getName()), 
                                array('cat.idCategoriaProducto',
                                    'cat.NombreCategoriaProducto',
                                    'cat.flagActivoCategoriaProducto',
                                    'cat.IdArea',
                                )
                        )
                ->where('cat.idCategoriaProducto = ?',$idCategoria)
                ->query()->fetch();
        ;
    }

    function listarCategorias() {
        return $this->_modelCategoria
                        ->getAdapter()
                        ->select()
                        ->from(array(
                            'cat' => $this->_modelCategoria->getName()), array('cat.idCategoriaProducto',
                            'cat.NombreCategoriaProducto',
                            'cat.flagActivoCategoriaProducto',
                            'are.NombreArea',
                                )
                        )->join(array('are' => $this->_modelArea->getName()), 'cat.IdArea = are.IdArea')
                        ->query()->fetchAll()
        ;
    }

}

?>
