<?php
class Admin_MarcaController extends CST_Controller_ActionAdmin {

    public function init() {
        parent::init();
        /* Initialize action controller here */
    }

    public function indexAction() {
        //  $this->view->idBody = 'login-bg';
        $this->view->marca = Application_Entity_Marca::listarMarcas();
    }

    public function desactiveCategoriaAction() {
        $entityCategoria = new Application_Entity_Categoria();
        $entityCategoria->identifyCategoria($this->_getParam('cat'));
        $entityCategoria->desactivarCategoria();
        $this->_redirect('/admin/categoria/');
    }
    public function activeCategoriaAction() {
        $entityCategoria = new Application_Entity_Categoria();
        $entityCategoria->identifyCategoria($this->_getParam('cat'));
        $entityCategoria->activarCategoria();
        $this->_redirect('/admin/categoria/');
    }

    public function createCategoriaAction() {
        $form = new Application_Form_RegistroCategoria();
        if ($this->_request->isPost()) {
            if ($form->isValid($this->_request->getParams())) {
                $categoria = new Application_Entity_Categoria();
                $values = $form->getValues();
                $data['_nombre'] = $values['nombreCategoria'];
                $data['_idArea'] = $values['area'];
                $data['_flagActivo'] = $values['flagActivo'];
                $categoria->setProperties($data);
                $categoria->createCategoria();
                $this->_redirect('/admin/categoria/');
            }
        }
        $this->view->form = $form;
    }

    public function editCategoriaAction() {
        $form = new Application_Form_RegistroCategoria();
        $entityCategoria = new Application_Entity_Categoria();
        $entityCategoria->identifyCategoria($this->_getParam('cat'));
        $data = $entityCategoria->getProperties();
        $dataForm['idCategoria'] = $data['_idCategoria'];
        $dataForm['nombreCategoria'] = $data['_nombre'];
        $dataForm['flagActivo'] = $data['_flagActivo'];
        $dataForm['area'] = $data['_idArea'];
        $form->excludeValidatorNombre($data['_nombre']);
        $form->populate($dataForm);
        if ($this->_request->isPost()) {
            if ($form->isValid($this->_request->getParams())) {
                $categoria = new Application_Entity_Categoria();
                $values = $form->getValues();
                $data['_nombre'] = $values['nombreCategoria'];
                $data['_idArea'] = $values['area'];
                $data['_idCategoria'] = $values['idCategoria'];
                $data['_flagActivo'] = $values['flagActivo'];
                $categoria->setProperties($data);
                $categoria->editCategoria();
                $this->_redirect('/admin/categoria/');
            }
        }
        $this->view->form = $form;
    }

    //put your code here
}

?>
