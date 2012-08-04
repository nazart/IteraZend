<?php

class Default_ServicioController extends CST_Controller_ActionDefault
{

    public function init()
    {
        parent::init();
        /* Initialize action controller here */
    }

    public function indexAction()
    {
        
    }
    
    public function descripcionServicioAction()
    {
        $entityArea = new Application_Entity_Area();
        $entityArea->setArea('', $this->_getParam('slugServico',''));
        $this->view->descripcion = $entityArea->_descripcionArea;
    }


}