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
    private $_modelDetalleSlug;
    private $_modelSlug;
    private $_modelMarca;
    private $_modelImagen;

    function __construct() {
        $this->_modelProducto = new Application_Model_TableBase_Producto();
        $this->_modelMarca = new Application_Model_TableBase_Marca();
        $this->_modelArea = new Application_Model_TableBase_Area();
        $this->_modelSubCategoriaProducto = new Application_Model_TableBase_SubCategoriaProducto();
        $this->_modelCategoriaProducto = new Application_Model_TableBase_CategoriaProducto();
        $this->_modelDetalleSlug = new Application_Model_TableBase_DetalleSlug();
        $this->_modelSlug = new Application_Model_TableBase_Slug();
        $this->_modelImagen = new Application_Model_TableBase_ImagenProducto();
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

    function listarTodosProductos($slugMarca='') {
        if ($slugMarca == '') {
            return $this->_modelProducto
                            ->select()
                            ->query()
                            ->fetchAll();
        } else {
            $baseProducto = $this->_modelProducto
                            ->getAdapter()
                            ->select()
                            ->from(array('pr' => $this->_modelProducto->getName()), array(
                                'pr.IdProducto',
                                'pr.NombreProducto',
                                'pr.IdArea',
                                'pr.IdCategoriaProducto',
                                'pr.IdSubCategoriaProducto',
                                'pr.ImagenProducto',
                                'pr.DescricionCortaProducto',
                                'pr.SlugProducto'
                            ));
            if ($slugMarca != '') {
            $baseProducto = $baseProducto->join(array('mar' => $this->_modelMarca->getName()), 'mar.IdMarca=pr.IdMarca');
            $slugMarca= "'".str_replace(',', "','", $slugMarca)."'";
            $baseProducto = $baseProducto->where('mar.SlugMarca in (?)',  new Zend_Db_Expr($slugMarca));
                    
        }
        return $baseProducto->query()->fetchAll();
        }
        
    }
    function listarProductosArea($slugArea='', $idArea='', $slugMarca='') {
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

        if ($slugMarca != '') {
            $baseProducto = $baseProducto->join(array('mar' => $this->_modelMarca->getName()), 'mar.IdMarca=pr.IdMarca');
            $slugMarca= "'".str_replace(',', "','", $slugMarca)."'";
            $baseProducto = $baseProducto->where('mar.SlugMarca in (?)',  new Zend_Db_Expr($slugMarca));
        }
        //echo $baseProducto;
        //exit;

        return $baseProducto->query()->fetchAll();
    }

    function listarProductosCategoria($slugCategoria='', $idCategoria='', $slugMarca='') {
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
        if ($slugMarca != '') {
            
            $baseProducto = $baseProducto->join(array('mar' => $this->_modelMarca->getName()), 'mar.IdMarca=pr.IdMarca');
            $slugMarca= "'".str_replace(',', "','", $slugMarca)."'";
            $baseProducto = $baseProducto->where('mar.SlugMarca in (?)',  new Zend_Db_Expr($slugMarca));
        }
        return $baseProducto->query()->fetchAll();
    }

    function listarProductosSubcategoria($slugSubCategoria='', $idSubCategoria='', $slugMarca='') {
        $baseProducto = $this->_modelProducto
                ->getAdapter()
                ->select()
                ->from(array('pr' => $this->_modelProducto->getName()))
                ->join(array('sctg' => $this->_modelSubCategoriaProducto->getName()), 'sctg.IdSubCategoriaProducto=pr.IdSubCategoriaProducto');
        if ($slugSubCategoria != '') {
            $baseProducto = $baseProducto->where('SlugSubCategoriaProducto=?', $slugSubCategoria);
        } elseif ($idSubCategoria != '') {
            $baseProducto = $baseProducto->where('IdSubCategoriaProducto=?', $idSubCategoria);
        }
        if ($slugMarca != '') {
            
            $baseProducto = $baseProducto->join(array('mar' => $this->_modelMarca->getName()), 'mar.IdMarca=pr.IdMarca');
            $slugMarca= "'".str_replace(',', "','", $slugMarca)."'";
            $baseProducto = $baseProducto->where('mar.SlugMarca in (?)',  new Zend_Db_Expr($slugMarca));
        }
        return $baseProducto->query()->fetchAll();
    }

    function buscarProductos($arraySlug='') {
        
        $result = $this->_modelProducto->getAdapter()
                ->select()
                ->distinct()
                ->from(array('pr' => $this->_modelProducto->getName()), array(
                    'pr.IdProducto',
                    'pr.NombreProducto',
                    'pr.IdArea',
                    'pr.IdCategoriaProducto',
                    'pr.IdSubCategoriaProducto',
                    'pr.DescricionCortaProducto',
                    'pr.SlugProducto'
                        )
                )
                ->join(array('dts' => $this->_modelDetalleSlug->getName()), 'pr.IdProducto = dts.IdProducto', '')
                ->join(array('sl' => $this->_modelSlug->getName()), 'sl.IdSlug = dts.IdSlug', '');
        if ($arraySlug != '') {
            $result->where('sl.NombreSlug REGEXP ?', array($arraySlug))->order('dts.Prioridad');
        }
        echo $result;
return $result;
    }
    function listarDetalleProducto($slugProducto='',$idProducto=''){
        if($slugProducto=='' && $idProducto=='')
            return false;
        
        $queryBase = $this->_modelProducto
                ->getAdapter()
                ->select()
                ->from(array('pr'=>'producto'),array(
                    'pr.IdProducto',
                    'pr.NombreProducto',
                    'pr.IdCategoriaProducto',
                    'pr.IdSubCategoriaProducto',
                    'pr.IdArea',
                    'pr.PrecioProducto',
                    'pr.DescricionCortaProducto',
                    'pr.DescricionProducto',
                    'pr.SlugProducto',
                    'pr.IdMarca')
                        );
        if($slugProducto!='')
        {
            $queryBase = $queryBase->where('pr.SlugProducto=?',$slugProducto);
        }else{
            if($idProducto!=''){
                $queryBase = $queryBase->where('pr.IdProducto=?',$idProducto);
            }
        }
        return $queryBase->query()->fetch();
    }
    function listarImagenes($idProducto){
        return $this->_modelImagen
                ->select()
                ->where('IdProducto=?',$idProducto)
                ->query()
                ->fetchAll();
    }

}

?>
