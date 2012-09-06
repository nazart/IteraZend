<?php

class Application_Model_Marca extends CST_Model{

    //put your code here
    private $_modelMarca;
    private $_modelProducto;
    private $_modelProductoDestacadoMarca;
    private $_modelImagenProducto;

    function __construct() {
        $this->_modelMarca = new Application_Model_TableBase_Marca();
        $this->_modelProducto = new Application_Model_TableBase_Producto();
        $this->_modelProductoDestacadoMarca = new Application_Model_TableBase_ProductoDestacadoMarca();
        $this->_modelImagenProducto = new Application_Model_TableBase_ImagenProducto();
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
    function listarMarcasSociadasProductoDestacados($limit=''){
        $result = $this->_modelMarca
                ->getAdapter()
                ->select()
                ->from(array('mr' => $this->_modelMarca->getName()),array(
                    'mr.IdMarca',
                    'mr.NombreMarca',
                    'mr.SlugMarca',
                    'mr.ImagenMarca',
                    'pr.IdProducto',
                    'pr.NombreProducto',
                    'imp.NombreImagenProducto',
                    'pr.SlugProducto',
                    ))
                ->join(array('pr' => $this->_modelProducto->getName()), 'pr.IdMarca=mr.IdMarca')
                ->join(array('mpd' => $this->_modelProductoDestacadoMarca->getName()), 'mpd.IdMarca=mr.IdMarca and mpd.IdProducto=pr.IdProducto')
                ->joinLeft(array('imp' => $this->_modelImagenProducto->getName()), 'pr.IdProducto=imp.IdProducto and imp.PrioridadImagenProducto=1')
                ->distinct()
                //->group('mr.IdMarca')
                ->order('NombreMarca' );
                ;
        if($limit!=''){
         $result->limit($limit);   
        }
        //$result = $this->_modelMarca->getAdapter()->fetchRow($result, 'IdMarca');
         $result = $result->query()->fetchAll();
         return $this->arrayAsoccForFirstItem($result);
    }
    function listarMarcas()
    {
        return $this->_modelMarca
                ->select()
                ->where('EstadoMarca = ?',1)
                ->query()
                ->fetchAll();
    }
    function insertMarca($data) {
        $this->_modelMarca->insert($data);
        return $this->_modelMarca->getAdapter()->lastInsertId();
    }
    function editarMarca($data,$idMarca) {
        $where   = $this->_modelMarca->getAdapter()
                ->quoteInto('IdMarca =?',$idMarca);
        return $this->_modelMarca->update($data,$where);
    }
}

?>
