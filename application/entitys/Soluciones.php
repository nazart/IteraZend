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
        $arbol = $modelSoluciones->listarArbolCategoriaSoluciones();
        return self::listarCategoriaSolucionesArbol($arbol);
    }
    
    private function listarCategoriaSolucionesArbol($arbol){
        $count = 0;
        $nombreArbol = '';
        $arbolReturn = array();
        foreach ($arbol as $index) {
            if ($nombreArbol != $index['NombreCategoriaSoluciones']) {
                $arbolReturn[$index['SlugCategoriaSolucion']]['label'] = $index['NombreCategoriaSoluciones'];
                $arbolReturn[$index['SlugCategoriaSolucion']]['uri'] = '/Soluciones/'.$index['SlugCategoriaSolucion'];
                $arbolReturn[$index['SlugCategoriaSolucion']]['pages'] = self::listarSolucionesArbol($index['IdCategoriaSoluciones'],$arbol);
                $nombreArbol = $index['NombreCategoriaSoluciones'];
                $count++;
            }
        }
        return $arbolReturn;
    }
    
    private function listarSolucionesArbol($idCategoria,$arbol){
        $count = 0;
        $idAreaCategoria = '';
        $arbolReturn = array();
        foreach($arbol as $index){
            if($index['solucionCategoria']==$idCategoria){
                $arbolReturn[$index['SlugSoluciones']]['label']= $index['NombreSoluciones'];
                $arbolReturn[$index['SlugSoluciones']]['uri']= '/soluciones/'.$index['SlugCategoriaSolucion'].'/'.$index['SlugSoluciones'];
            }
        }
        return $arbolReturn;        
    }
    
}

?>
