<?php

class Default_CotizarController extends CST_Controller_ActionDefault
{

    public function init()
    {
        parent::init();
        /* Initialize action controller here */
    }

    public function indexAction()
    {
        print_r($this->_sessiondefault->cotizacion);
    }
    public function productoAction(){
        $productos = new Application_Entity_Producto();
        $productos->searchProducto($this->_getParam('slugProducto'));
        $this->_sessiondefault->cotizacion[] =  $productos->getProducto();
        $this->_redirect('/cotizar');
    }


}