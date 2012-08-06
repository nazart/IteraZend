<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of BuscarController
 *
 * @author Laptop
 */
class Default_BuscarController extends CST_Controller_ActionDefault {

    public function init() {
        parent::init();
        $this->view->headLink()->appendStylesheet(CST_Server_ServerStatic::getUrl().'/css/productos.css');
        /* Initialize action controller here */
    }

    public function indexAction() {
        $filter = new CST_Filter_SeoUrl();

        if (trim($this->_getParam('search')) != '') {
            $this->_redirect('/buscar/' . $filter->filter(trim($this->_getParam('search')), '-', 0));
        }
        $slug = $filter->filter($this->_getParam('slugBusqueda', ''), '-', 0);
        $result = Application_Entity_Producto::buscarProductos(str_replace('-', "|", $slug));
        $paginator = Zend_Paginator::factory($result);
        $paginator->setCurrentPageNumber($this->_getParam('page'));
        $paginator->setItemCountPerPage(2);
        $this->view->productos = $paginator;
        $this->view->slug = $slug;
        $this->view->slugSearch = str_replace('-', " ", $slug);
    }

    public function busquedaAction() {
        //$modelBusqueda = new Application_Model_Busqueda();
    }

    //put your code here
}

?>
