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
    public $_sessiondefault;

    public function init() {
        parent::init();
        $this->_sessiondefault = new Zend_Session_Namespace('default');
        $listaCategorias = Application_Entity_Producto::listarArbolCategoriasProductos();
        $listaSoluciones = Application_Entity_Soluciones::listarArbolCategoriasSoluciones();
        $configNavigationArray = array(
            'home' => array('label' => 'Inicio', 'uri' => CST_Server_ServerBaseUrl::getUrl().'/', 'orden' => '1'),
            'nosotros' => array('label' => 'Nosotros', 'uri' => CST_Server_ServerBaseUrl::getUrl().'/nosotros', 'orden' => '2'),
            'productos' => array('label' => 'Productos', 'uri' => CST_Server_ServerBaseUrl::getUrl().'/productos', 'orden' => '3'),
            'marcas' => array('label' => 'Marcas', 'uri' => CST_Server_ServerBaseUrl::getUrl().'/marcas', 'orden' => '4'),
            'soluciones' => array('label' => 'Soluciones', 'uri' => CST_Server_ServerBaseUrl::getUrl().'/soluciones', 'orden' => '5'),
            'contactenos' => array('label' => 'Contactenos', 'uri' => CST_Server_ServerBaseUrl::getUrl().'/contactenos', 'orden' => '6'),
        );
        $configNavigationArray['productos']['pages'] = $listaCategorias;
        $configNavigationArray['soluciones']['pages'] = $listaSoluciones;
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