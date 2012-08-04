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
class Application_Model_Soluciones {

    //put your code here
    private $_modelSoluciones;
    private $_modelCategoriaSoluciones;

    function __construct() {
        $this->_modelSoluciones = new Application_Model_TableBase_Soluciones();
        $this->_modelCategoriaSoluciones = new Application_Model_TableBase_CategoriaSoluciones();
    }

    function listarArbolCategoriaSoluciones(){
        return $this->_modelSoluciones
                ->getAdapter()
                ->select()
                ->from(array('catsol'=>$this->_modelCategoriaSoluciones->getName()),
                        array('catsol.IdCategoriaSoluciones',
                            'catsol.NombreCategoriaSoluciones',
                            'catsol.SlugCategoriaSolucion',
                            'sol.IdSoluciones',
                            'sol.NombreSoluciones',
                            'sol.IdCategoriaSoluciones as solucionCategoria',
                            'sol.SlugSoluciones'
                            ))
                ->join(array('sol'=>$this->_modelSoluciones->getName()), 
                        'catsol.IdCategoriaSoluciones=sol.IdCategoriaSoluciones')
                ->query()
                ->fetchAll();
    }    
}

?>
