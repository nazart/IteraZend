<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of CategoriaSolucion
 *
 * @author Laptop
 */
class Application_Model_CategoriaSolucion {

    //put your code here
    private $_modelCategoriaSolucion;
    private $_modelArea;

    function __construct() {
        $this->_modelCategoriaSolucion = new Application_Model_TableBase_CategoriaSoluciones();
        $this->_modelArea = new Application_Model_TableBase_Area();
    }

    function insertCategoriaSolucion($data) {
        $this->_modelCategoriaSolucion->insert($data);
        return $this->_modelCategoriaSolucion->getAdapter()->lastInsertId();
    }
    function editarCategoriaSolucion($data,$idCategoriaSolucion) {
        $where   = $this->_modelCategoriaSolucion->getAdapter()->quoteInto('idCategoriaSolucionProducto =?',$idCategoriaSolucion);
        return $this->_modelCategoriaSolucion->update($data,$where);
    }

    function listarCategoriaSolucionsActivas() {
        return $this->_modelCategoriaSolucion
                        ->getAdapter()
                        ->select()
                        ->from(array('cat' => $this->_modelCategoriaSolucion->getName()), array('cat.IdCategoriaSolucion',
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

    function getCategoriaSolucion($idCategoriaSolucion) {
        return $this->_modelCategoriaSolucion
                        ->getAdapter()
                        ->select()
                        ->from(array(
                            'cat' => $this->_modelCategoriaSolucion->getName()), 
                                array('cat.idCategoriaSolucionProducto',
                                    'cat.NombreCategoriaSolucionProducto',
                                    'cat.flagActivoCategoriaSolucionProducto',
                                    'cat.IdArea',
                                )
                        )
                ->where('cat.idCategoriaSolucionProducto = ?',$idCategoriaSolucion)
                ->query()->fetch();
        ;
    }

    function listarCategoriaSolucions() {
        return $this->_modelCategoriaSolucion
                ->select()
                ->query()
                ->fetchAll();
    }

}

?>
