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
class Application_Model_Area {

    //put your code here
    private $_modelArea;

    function __construct() {
        $this->_modelArea= new Application_Model_TableBase_Area();
    }

    function listarAreas(){
        return $this->_modelArea
                ->select()
                ->query()
                ->fetchAll();
    }    
    function identificarArea($idArea='',$slugArea=''){
        $result = $this->_modelArea
                ->select();
        if($idArea!=''){
            $result = $result->where('IdArea=?',$idArea);
        }elseif($slugArea!=''){
            $result = $result->where('SlugArea=?',$slugArea);
        }
        $result = $result->query()
                ->fetch();
        return $result;
    }
    
}

?>
