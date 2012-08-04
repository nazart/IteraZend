<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of productos
 *
 * @author Laptop
 */
class Default_ProductosController extends CST_Controller_ActionDefault {

    public function init() {
        parent::init();
        /* Initialize action controller here */
    }

    public function indexAction() {
        $this->view->productos = $this->listarProductosPaginator('','',$this->_getParam('marca',''));
    }

    private function listarProductosPaginator($tipo='allProduct',$valorSlug='',$slugMarca='') {
        $productos = new Application_Entity_Producto();
        switch ($tipo) {
            case 'area':
                $result = Application_Entity_Producto::listarProductosArea($valorSlug,$slugMarca);
                break;
            case 'categoria':
                $result = Application_Entity_Producto::listarProductosCategoria($valorSlug,$slugMarca);
                break;
            case 'subcategoria':
                $result = Application_Entity_Producto::listarProductosSubCategoria($valorSlug,$slugMarca);
                break;
            default:
                $result = Application_Entity_Producto::listarTodosLosProductos($slugMarca);
                break;
        }
       
        $paginator = Zend_Paginator::factory($result);
        $paginator->setCurrentPageNumber($this->_getParam('page'));
        $paginator->setItemCountPerPage(2);
        return $paginator;
    }

    public function productosCategoriasAction() {
        $this->view->productos = $this->listarProductosPaginator('categoria',$this->_getParam('categoria'));
        $this->view->slugCategoria = $this->_getParam('categoria');
        $this->view->slugArea = $this->_getParam('area');
    }

    public function productosSubCategoriasAction() {
        $this->view->productos = $this->listarProductosPaginator('subcategoria',$this->_getParam('subcategoria'));
        $this->view->slugSubCategoria = $this->_getParam('subcategoria');
        $this->view->slugCategoria = $this->_getParam('categoria');
        $this->view->slugArea = $this->_getParam('area');
    }

    public function productosAreaAction() {
        $this->view->productos = $this->listarProductosPaginator('area',$this->_getParam('area'));
        $this->view->slugArea = $this->_getParam('area');
    }

    public function detalleProductoAction() {
        $productos = new Application_Entity_Producto();
        $this->view->detalleProducto = $productos->listarProducto('', '', $this->_getParam('slugProducto'));
        $this->view->productosRelacionados = $productos->listarProductosRelacionados($this->view->detalleProducto['IdProducto']);
    }

}

?>
