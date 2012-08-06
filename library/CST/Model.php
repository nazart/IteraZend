<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Model
 *
 * @author Laptop
 */
class CST_Model {
    //put your code here
    function arrayAsoccForFirstItem($array){
        $arrayResponse = array();
        foreach($array as $index => $data){
            $arrayResponse[$data[key($data)]][]=$data;
        }
        return $arrayResponse;
    }
}

?>
