<?php

class Default_MarcasController extends CST_Controller_ActionDefault
{

    public function init()
    {
        parent::init();
        /* Initialize action controller here */
    }

    public function indexAction()
    {
        $this->view->headLink()->appendStylesheet(CST_Server_ServerStatic::getUrl().'/css/marcas.css');
        $this->view->listaMarcas = Application_Entity_Marca::listarMarcasAsociadasProductoDestacados();
    }


}