<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of ActionDefault
 *
 * @author Laptop
 */
class CST_Controller_ActionDefault extends CST_Controller_Action {

    public $_listaCategoriasNavigator;
    public $_identity;

    public function init() {
        parent::init();

        $listaCategorias = Application_Entity_Producto::listarArbolCategoriasProductos();
        $configNavigationArray = array(
            'home' => array('label' => 'Inicio', 'uri' => '/', 'orden' => '1'),
            'nosotros' => array('label' => 'Nosotros', 'uri' => '/nosotros', 'orden' => '2'),
            'productos' => array('label' => 'Productos', 'uri' => '/productos', 'orden' => '3'),
            'soluciones' => array('label' => 'Soluciones', 'uri' => '/soluciones', 'orden' => '4'),
            'contactenos' => array('label' => 'Contactenos', 'uri' => '/contactenos', 'orden' => '5'),
        );

        
        //if (!$listaCategorias)
            //$listaCategorias = array();
        
        $configNavigationArray['productos']['pages'] = $listaCategorias;
        $this->view->listaCategoriasNavigator = $listaCategorias;
        $navigation = new Zend_Navigation($configNavigationArray);
        $this->view->navigation($navigation);
        $uri = $this->getRequest()->getPathInfo();
        $position = strpos($uri, '/page');
        if ($position > 0)
            $uri = substr($uri, 0, $position);
        $this->view->getPathInfo = $uri;
        $activeNavi = $this->view->navigation()->findByUri($uri);
        $activeNavi->active = true;
    }

    

    //put your code here
}