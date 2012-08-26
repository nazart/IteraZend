<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of BuscarController
 *
 * @author Laptop
 */
class Admin_SubcategoriaController extends CST_Controller_ActionAdmin {

    public function init() {
        parent::init();
        /* Initialize action controller here */
    }

    public function indexAction() {
        //  $this->view->idBody = 'login-bg';
        $this->view->subCategoria = Application_Entity_SubCategoria::listarSubCategorias();
    }

    public function desactiveSubcategoriaAction() {
        $entitySubCategoria = new Application_Entity_SubCategoria();
        $entitySubCategoria->identifySubCategoria($this->_getParam('subcat'));
        $entitySubCategoria->desactivarSubCategoria();
        $this->_redirect('/admin/subcategoria/');
    }
    public function activeSubcategoriaAction() {
        $entitySubCategoria = new Application_Entity_SubCategoria();
        $entitySubCategoria->identifySubCategoria($this->_getParam('subcat'));
        $entitySubCategoria->activarSubCategoria();
        $this->_redirect('/admin/subcategoria/');
    }

    public function createSubcategoriaAction() {
        $form = new Application_Form_RegistroSubCategoria();
        if ($this->_request->isPost()) {
            if ($form->isValid($this->_request->getParams())) {
                $SubCategoria = new Application_Entity_SubCategoria();
                $values = $form->getValues();
                $data['_nombre'] = $values['nombreSubCategoria'];
                $data['_idCategoria'] = $values['categoria'];
                $data['_flagActivo'] = $values['flagActivo'];
                $SubCategoria->setProperties($data);
                $SubCategoria->createSubCategoria();
                $this->_redirect('/admin/subcategoria/');
            }
        }
        $this->view->form = $form;
    }

    public function editSubcategoriaAction() {
        $form = new Application_Form_RegistroSubCategoria();
        $entitySubCategoria = new Application_Entity_SubCategoria();
        $entitySubCategoria->identifySubCategoria($this->_getParam('subcat'));
        $data = $entitySubCategoria->getProperties();
        $dataForm['idSubCategoria'] = $data['_idSubCategoria'];
        $dataForm['nombreSubCategoria'] = $data['_nombre'];
        $dataForm['flagActivo'] = $data['_flagActivo'];
        $dataForm['categoria'] = $data['_idCategoria'];
        $form->excludeValidatorNombre($data['_nombre']);
        $form->populate($dataForm);
        if ($this->_request->isPost()) {
            if ($form->isValid($this->_request->getParams())) {
                $SubCategoria = new Application_Entity_SubCategoria();
                $values = $form->getValues();
                $data['_nombre'] = $values['nombreSubCategoria'];
                $data['_idCategoria'] = $values['categoria'];
                $data['_idSubCategoria'] = $values['idSubCategoria'];
                $data['_flagActivo'] = $values['flagActivo'];
                $SubCategoria->setProperties($data);
                $SubCategoria->editSubCategoria();
                $this->_redirect('/admin/subcategoria/');
            }
        }
        $this->view->form = $form;
    }

    //put your code here
}

?>
