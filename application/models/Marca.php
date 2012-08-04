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
class Application_Model_Marca {

    //put your code here
    private $_modelMarca;
    private $_modelProducto;

    function __construct() {
        $this->_modelMarca = new Application_Model_TableBase_Marca();
        $this->_modelProducto = new Application_Model_TableBase_Producto();
    }

    function listarMarcasSociadasProducto($limit=''){
        $result = $this->_modelMarca
                ->getAdapter()
                ->select()
                ->from(array('mr' => $this->_modelMarca->getName()),array(
                    'mr.NombreMarca',
                    'countProductos'=>new Zend_Db_Expr('count(pr.IdProducto)'),
                    'mr.SlugMarca',
                    'mr.ImagenMarca',
                    'mr.IdMarca',
                    ))
                ->join(array('pr' => $this->_modelProducto->getName()), 'pr.IdMarca=mr.IdMarca')
                ->distinct()
                ->group('mr.IdMarca')
                ->order('countProductos DESC' );
                ;
        if($limit!=''){
         $result->limit($limit);   
        }
         $result = $result->query()->fetchAll();
         return $result;
    }    
    
}

?>
