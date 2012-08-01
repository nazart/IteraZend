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
class Application_Model_PaginaInterna {

    //put your code here
    private $_modelPaginaInterna;

    function __construct() {
        $this->_modelPaginaInterna = new Application_Model_TableBase_PaginaInterna();
    }

    function listarPaginaInterna($url) {
        return 
                        $this->_modelPaginaInterna
                                ->select()
                                ->where('UrlPaginaInterna =?', $url)
            ->query()
                ->fetch();
    }

}

?>
