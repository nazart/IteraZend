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
class Application_Model_Soluciones extends CST_Model {

    //put your code here
    private $_modelSoluciones;
    private $_modelCategoriaSoluciones;

    function __construct() {
        $this->_modelSoluciones = new Application_Model_TableBase_Soluciones();
        $this->_modelCategoriaSoluciones = new Application_Model_TableBase_CategoriaSoluciones();
    }
    function editarSoluciones($data,$id){
        $where = $this->_modelSoluciones->getAdapter()->quoteInto('IdSoluciones =?',$id);
        $this->_modelSoluciones->update($data, $where);
    }
    function insertSoluciones($data){
        return $this->_modelSoluciones->insert($data);
    }

    function listarSoluciones() {
        return $this->_modelSoluciones
                        ->getAdapter()
                        ->select()
                        ->from(array('catsol' => $this->_modelCategoriaSoluciones->getName()), array('catsol.IdCategoriaSoluciones',
                            'catsol.NombreCategoriaSoluciones',
                            'catsol.SlugCategoriaSolucion',
                            'catsol.ImagenCategoriaSoluciones',
                            'sol.IdSoluciones',
                            'sol.NombreSoluciones',
                            'sol.IdCategoriaSoluciones as solucionCategoria',
                            'sol.SlugSoluciones',
                            'sol.FlagActivoSoluciones',
                            'sol.ImagenSoluciones'
                        ))
                        ->join(array('sol' => $this->_modelSoluciones->getName()), 
                                'catsol.IdCategoriaSoluciones=sol.IdCategoriaSoluciones')
                        
                        ->query()
                        ->fetchAll();
    }

    function listarDetalleSoluciones($slugSoluciones='', $idSoluciones='') {
        if ($slugSoluciones == '' && $idSoluciones == '')
            return false;

        $queryBase = $this->_modelSoluciones->select();
        if ($slugSoluciones != '') {
            $queryBase = $queryBase->where('SlugSoluciones=?', $slugSoluciones);
        } elseif ($idSoluciones != '') {
            $queryBase = $queryBase->where('IdSoluciones=?', $idSoluciones);
        }
        return $queryBase->query()->fetch();
    }

    function listarArbolCategoriaSoluciones() {
        return $this->_modelSoluciones
                        ->getAdapter()
                        ->select()
                        ->from(array('catsol' => $this->_modelCategoriaSoluciones->getName()), array('catsol.IdCategoriaSoluciones',
                            'catsol.NombreCategoriaSoluciones',
                            'catsol.SlugCategoriaSolucion',
                            'catsol.ImagenCategoriaSoluciones',
                            'sol.IdSoluciones',
                            'sol.NombreSoluciones',
                            'sol.IdCategoriaSoluciones as solucionCategoria',
                            'sol.SlugSoluciones',
                            'sol.ImagenSoluciones'
                        ))
                        ->join(array('sol' => $this->_modelSoluciones->getName()), 'catsol.IdCategoriaSoluciones=sol.IdCategoriaSoluciones')
                        ->where('sol.FlagActivoSoluciones = ?', 1)
                        ->query()
                        ->fetchAll();
    }

    function listarSolucionesDeUnaCategoria($slugCategoria='', $idCategoria='') {
        if ($slugCategoria == '' && $idCategoria == '')
            return false;
        $queryBase = $this->_modelSoluciones->getAdapter()
                ->select()
                ->from(array('sol' => $this->_modelSoluciones->getName(), array(
                        'sol.IdSoluciones',
                        'sol.NombreSoluciones',
                        'sol.IdCategoriaSoluciones',
                        'sol.DescripcionSoluciones',
                        'sol.DescripcionCortaSoluciones',
                        'sol.SlugSoluciones',
                        'sol.ImagenSoluciones'
                        )))
                ->join(array('ctgs' => $this->_modelCategoriaSoluciones->getName()), 'ctgs.IdCategoriaSoluciones=sol.IdCategoriaSoluciones')
        ;
        if ($slugCategoria != '') {
            $queryBase = $queryBase->where('SlugCategoriaSolucion = ?', $slugCategoria);
        } elseif ($idCategoria != '') {
            $queryBase = $queryBase->where('IdCategoriaSoluciones = ?', $idCategoria);
        }
        return $queryBase->query()->fetchAll();
    }

}

?>
