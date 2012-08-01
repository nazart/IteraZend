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
class Application_Entity_Soluciones {
    //put your code here
    
    static function listarArbolCategoriasSoluciones() {
        $modelSoluciones = new Application_Model_Soluciones();
        $modelSoluciones->listarArbolCategoriaSoluciones();
    }
}

?>
