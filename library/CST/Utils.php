<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Utils
 *
 * @author Laptop
 */
class CST_Utils {
    static function fetchPairs($array){
        $arrayResponse = array();
        foreach($array as $index => $datos){
            $keys = array_keys($datos);
            $arrayResponse[$datos[$keys[0]]]=$datos[$keys[1]];
        }
        return $arrayResponse;
    }
    //put your code here
}

?>
