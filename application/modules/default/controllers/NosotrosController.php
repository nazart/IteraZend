<?php

class Default_NosotrosController extends CST_Controller_ActionDefault
{

    public function init()
    {
        parent::init();
        /* Initialize action controller here */
    }

    public function indexAction()
    {
        $this->view->informacionPagina = Application_Entity_PaginaInterna::listarPaginaInterna('/nosotros');
    }


}