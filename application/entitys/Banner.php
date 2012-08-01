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
class Application_Entity_Banner {
    //put your code here
    
    static function listarBanner(){
        $modelBanner = new Application_Model_Banner();
        return $modelBanner->listarBanners();
    }
}

?>
