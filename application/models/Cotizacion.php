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
class Application_Model_Cotizacion {

    //put your code here
    private $_modelCotizacion;

    function __construct() {
        $this->_modelCotizacion = new Application_Model_TableBase_Cotizacion();
        $this->_modelCotizacionProducto = new Application_Model_TableBase_CotizacionProducto();
    }
    function insertCotizacion($data){
        $this->_modelCotizacion->insert($data);
        return $this->_modelCotizacion->getAdapter()->lastInsertId();
    }
    function insertContizacionProducto($data){
        return $this->_modelCotizacionProducto->insert($data);
    }

    
}

?>
