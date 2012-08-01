<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Producto
 *
 * @author Laptop
 */
class Application_Model_Producto {

    //put your code here
    private $_modelProducto;
    private $_modelArea;
    private $_modelSubCategoriaProducto;
    private $_modelCategoriaProducto;

    function __construct() {
        $this->_modelProducto = new Application_Model_TableBase_Producto();
        $this->_modelArea = new Application_Model_TableBase_Area();
        $this->_modelSubCategoriaProducto = new Application_Model_TableBase_SubCategoriaProducto();
        $this->_modelCategoriaProducto = new Application_Model_TableBase_CategoriaProducto();
    }

    function listarArbolCategoriaProducto() {

        return $this->_modelArea
                        ->getAdapter()
                        ->select()
                        ->from(array('ar' => $this->_modelArea->getName()), array(
                            'ar.NombreArea',
                            'ar.SlugArea',
                            'ar.IdArea',
                            'ctgp.NombreCategoriaProducto',
                            'ctgp.SlugCategoriaProducto',
                            'ctgp.IdCategoriaProducto',
                            'ctgp.IdArea as IdAreaCategoria',
                            'sctgp.NombreSubCategoriaProducto',
                            'sctgp.IdCategoriaProducto as IdCategoriaSubcategoria',
                            'sctgp.SlugSubCategoriaProducto',
                        ))
                        ->joinLeft(array('ctgp' => $this->_modelCategoriaProducto->getName()), 'ctgp.IdArea = ar.IdArea', '')
                        ->joinLeft(array('sctgp' => $this->_modelSubCategoriaProducto->getName()), 'sctgp.IdCategoriaProducto=ctgp.IdCategoriaProducto', '')
                        ->query()->fetchAll();
    }

    function listarTodosProductos() {
        return $this->_modelProducto
                ->select()
                ->query()
                ->fetchAll();
    }

    function listarProductosArea($slugArea='', $idArea='') {
        $baseProducto = $this->_modelProducto
                ->getAdapter()
                ->select()
                ->from(array('pr' => $this->_modelProducto->getName()))
                ->join(array('ar' => $this->_modelArea->getName()), 'ar.IdArea=pr.IdArea');
        if ($slugArea != '') {
            $baseProducto = $baseProducto->where('SlugArea=?', $slugArea);
        } elseif ($idArea != '') {
            $baseProducto = $baseProducto->where('IdArea=?', $idArea);
        }
        return $baseProducto->query()->fetchAll();
    }

    function listarProductosCategoria($slugCategoria='', $idCategoria='') {
        $baseProducto = $this->_modelProducto
                ->getAdapter()
                ->select()
                ->from(array('pr' => $this->_modelProducto->getName()))
                ->join(array('ctg' => $this->_modelCategoriaProducto->getName()), 'ctg.IdCategoriaProducto=pr.IdCategoriaProducto');
        if ($slugCategoria != '') {
            $baseProducto = $baseProducto->where('SlugCategoriaProducto=?', $slugCategoria);
        } elseif ($idCategoria != '') {
            $baseProducto = $baseProducto->where('IdCategoriaProducto=?', $idCategoria);
        }
        return $baseProducto->query()->fetchAll();
    }

    function listarProductosSubcategoria($slugSubCategoria='', $idSubCategoria='') {
        $baseProducto = $this->_modelProducto
                ->getAdapter()
                ->select()
                ->from(array('pr' => $this->_modelProducto->getName()))
                ->join(array('sctg' => $this->_modelSubCategoriaProducto->getName()), 'sctg.IdSubCategoriaProducto=pr.IdSubCategoriaProducto');
        if ($slugCategoria != '') {
            $baseProducto = $baseProducto->where('SlugSubCategoriaProducto=?', $slugSubCategoria);
        } elseif ($idCategoria != '') {
            $baseProducto = $baseProducto->where('IdSubCategoriaProducto=?', $idSubCategoria);
        }
        return $baseProducto->query()->fetchAll();
    }

}

?>
