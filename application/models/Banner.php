<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Categoria
 *
 * @author Laptop
 */
class Application_Model_Banner {

    //put your code here
    private $_modelBanner;

    function __construct() {
        $this->_modelBanner= new Application_Model_TableBase_Banner();
    }

    function listarBanners(){
        return $this->_modelBanner
                ->select()
                ->query()
                ->fetchAll();
    }    
    
}

?>
