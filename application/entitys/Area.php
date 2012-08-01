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
class Application_Entity_Area {
    //put your code here
    
    static function listarAreas(){
        $modelArea = new Application_Model_Area();
        return $modelArea->listarAreas();
    }
}

?>
