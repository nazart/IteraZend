<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Cotizacion
 *
 * @author Laptop
 */
class Application_Entity_Cotizacion extends CST_Entity {

    //put your code here
    public $_idCotizacion;
    //public $_fechaCotizacion;
    public $_nombre;
    public $_apellidos;
    public $_empresa;
    public $_telefono;
    public $_email;
    public $_descripcion;
    public $_productos;

    function __construct($data = null) {
        parent::init($data);
        $this->_modelCotizacion = new Application_Model_Cotizacion();
    }

    function insertContizacion() {
        $data['apellidos'] = $this->_apellidos;
        $data['descripcion'] = $this->_descripcion;
        $data['email'] = $this->_email;
        $data['empresa'] = $this->_empresa;
        $data['fechaCotizacion'] = date('Y-m-d H:i:s');
        $data['nombre'] = $this->_nombre;
        $data['telefono'] = $this->_telefono;
        $this->_idCotizacion = $this->_modelCotizacion->insertCotizacion($data);
        if (!empty($this->_productos)) {
            foreach ($this->_productos as $index) {
                $data2['idCotizacion'] = $this->_idCotizacion;
                $data2['idProducto'] = $index->_idProducto;
                $this->_modelCotizacion->insertContizacionProducto($data2);
            }
        }
    }
    function insertarProducto(Application_Entity_Producto $producto) {
        $this->_productos[] = $producto;
    }

}

?>
