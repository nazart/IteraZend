<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Transaccion
 *
 * @author Laptop
 */
class Application_Entity_PaginaInterna {
    //put your code here
    
    static function listarPaginaInterna($url){
        $modelArea = new Application_Model_PaginaInterna();
        return $modelArea->listarPaginaInterna($url);
    }
}

?>
