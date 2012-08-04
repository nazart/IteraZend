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
class Application_Entity_Area extends CST_Entity{
    //put your code here
    public $_idArea;
    public $_nombreArea;
    public $_imagenArea;
    public $_descripcionCortaArea;
    public $_slugArea;
    public $_descripcionArea;
    
    function __construct($dataArea = null) {
       parent::init($dataArea);
    }
    
    function setArea($idArea='',$slugArea=''){
        $modelArea = new Application_Model_Area();
        $areaIdentity = $modelArea->identificarArea($idArea,$slugArea);
        if(!empty($areaIdentity)){
            $this->_idArea = $areaIdentity['IdArea'];
            $this->_nombreArea = $areaIdentity['NombreArea'];
            $this->_imagenArea = $areaIdentity['ImagenArea'];
            $this->_descripcionCortaArea = $areaIdentity['DescripcionCortaArea'];
            $this->_descripcionArea = $areaIdentity['DescripcionArea'];
            $this->_slugArea = $areaIdentity['SlugArea'];
        }
    }
    
    static function listarAreas(){
        $modelArea = new Application_Model_Area();
        return $modelArea->listarAreas();
    }
    
}

?>
