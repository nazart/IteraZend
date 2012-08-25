<?php

class Default_CotizarController extends CST_Controller_ActionDefault {

    public function init() {
        parent::init();
        $this->view->headLink()->appendStylesheet(CST_Server_ServerStatic::getUrl() . '/css/cotizacion.css');
    }

    public function indexAction() {
        $this->view->productoCotizar = $this->_sessiondefault->cotizacion;
        $form = new Application_Form_Cotizar();
        $this->view->flashMessenger = $this->_flashMessenger->getMessages();
        if ($this->_request->isPost()) {
            if ($form->isValid($this->_getAllParams())) {
                $cotizacion = new Application_Entity_Cotizacion();
                $paramCotizacion = $form->getValues();
                $data['_nombre'] = $paramCotizacion['nombres'];
                $data['_apellidos'] = $paramCotizacion['apellidos'];
                $data['_empresa'] = $paramCotizacion['empresa'];
                $data['_telefono'] = $paramCotizacion['telefono'];
                $data['_email'] = $paramCotizacion['mail'];
                $data['_descripcion'] = $paramCotizacion['descripcion'];
                $cotizacion->setProperties($data);
                $productos = new Application_Entity_Producto();
                if (!empty($this->_sessiondefault->cotizacion)) {
                    foreach ($this->_sessiondefault->cotizacion as $index) {
                        $productos->setProperties($index);
                        $cotizacion->insertarProducto($producto);
                    }
                }
                $cotizacion->insertContizacion();
                $this->_flashMessenger->addMessage('La cotizacion se registro correctamente: En breve nos estaremos poniendo en contacto con usted Gracias!');
                $this->_redirect('/cotizar');
            } else {
                $this->_flashMessenger->addMessage('Corriga los datos');
            }
        }
        $this->view->formulario = $form;
    }

    public function productoAction() {
        $productos = new Application_Entity_Producto();
        $productos->searchProducto($this->_getParam('slugProducto'));
        $this->_sessiondefault->cotizacion[$productos->_slugProducto] = $productos->getProducto();
        $this->_redirect('/cotizar');
    }

    public function deleteAction() {
        unset($this->_sessiondefault->cotizacion[$this->_getParam('slugProducto')]);
        $this->_redirect('/cotizar');
    }

}