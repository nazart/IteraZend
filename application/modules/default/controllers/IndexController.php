<?php

class Default_IndexController extends CST_Controller_ActionDefault
{

    public function init()
    {
        parent::init();
        /* Initialize action controller here */
    }

    public function indexAction()
    {
        $this->view->listaAreas = Application_Entity_Area::listarAreas();
        $this->view->listaBanner = Application_Entity_Banner::listarBanner();
        $this->view->listaMarcas = Application_Entity_Marca::listarMarcaSociadasProducto(5);
    }


}