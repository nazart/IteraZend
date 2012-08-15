<?php

class Default_SolucionesController extends CST_Controller_ActionDefault
{

    public function init()
    {
        $this->view->headLink()->appendStylesheet(CST_Server_ServerStatic::getUrl().'/css/soluciones.css');
        parent::init();
        /* Initialize action controller here */
    }

    public function indexAction()
    {
        
        $resultNavigationCategorias = new Zend_Navigation($this->_listaCategoriasNavigator);
        $this->view->soluciones = Application_Entity_Soluciones::listarSoluciones();
    }
    public function solucionesCategoriaAction(){
        $this->view->soluciones = Application_Entity_Soluciones::listarSolucionesDeUnaCategoria($this->_getParam('slugcategoria',''));
    }
    public function solucionesDetalleAction(){
        $soluciones = new Application_Entity_Soluciones();
        $soluciones->searchSolucion($this->_getParam('slugSolucion',''));
        $this->view->detalleSolucion = $soluciones->getSolucion();
    }


}