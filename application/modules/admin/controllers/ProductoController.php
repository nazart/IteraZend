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
class Admin_ProductoController extends CST_Controller_ActionAdmin {

    public function init() {
        parent::init();
        /* Initialize action controller here */
    }

    public function indexAction() {
    //  $this->view->idBody = 'login-bg';
        
    }
    public function createCategoriaAction(){
        $form = new Application_Form_RegistroCategoria();
        if($this->_request->isPost()){
            if($form->isValid($this->_request->getParams())){
                $categoria = new Application_Entity_Categoria();
                $values = $form->getValues();
                $data['_nombre']=$values['nombreCategoria'];
                $data['_idArea']=$values['area'];
                $categoria->setProperties($data);
                $categoria->createCategoria();
            }
        }
        $this->view->form = $form;
    }
    public function editCategoriaAction(){
        $form = new Application_Form_RegistroCategoria();
        $entityCategoria = new Application_Entity_Categoria();
        $entityCategoria->identifyCategoria($this->_getParam('cat'));
        $data = $entityCategoria->getProperties();
        $dataForm['idCategoria'] = $data['_idCategoria'];
        $dataForm['nombreCategoria'] = $data['_nombre'];
        $dataForm['area'] = $data['_idArea'];
        $form->populate($dataForm); 
        $this->view->form = $form;
        
        
    }
    public function categoriaAction(){
       $this->view->categoria = Application_Entity_Categoria::listarCategorias();
    }
    
    //put your code here
}

?>
