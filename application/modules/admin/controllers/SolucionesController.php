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
class Admin_SolucionesController extends CST_Controller_ActionAdmin {

    public function init() {
        parent::init();
        /* Initialize action controller here */
    }

    public function indexAction() {
        //  $this->view->idBody = 'login-bg';
        $this->view->soluciones = Application_Entity_Soluciones::listarAllSoluciones();
    }

    public function desactiveSolucionesAction() {
        $entitySoluciones = new Application_Entity_Soluciones();
        $entitySoluciones->searchSolucion('',$this->_getParam('cat'));
        $entitySoluciones->desactivarSoluciones();
        $this->_redirect('/admin/Soluciones/');
    }
    public function activeSolucionesAction() {
        $entitySoluciones = new Application_Entity_Soluciones();
        $entitySoluciones->searchSolucion('',$this->_getParam('cat'));
        $entitySoluciones->activarSoluciones();
        $this->_redirect('/admin/Soluciones/');
    }

    public function createSolucionesAction() {
        $form = new Application_Form_RegistroSoluciones();
        if ($this->_request->isPost()) {
            if ($form->isValid($this->_request->getParams())) {
                $extn = pathinfo($form->imagen->getFileName(), PATHINFO_EXTENSION);
                $nameFile = 'imagen_soluciones_' . time('H:i:s') . '.' . $extn;
                $rutaFileAbs = $form->imagen->getDestination() . '/' . $nameFile;
                $form->imagen->addFilter('Rename', array('target' => $rutaFileAbs, 'overwrite' => true));
                if(!$form->imagen->receive()){
                    echo 'se cago la imagen';
                }
                $value = $form->getValues();
                $soluciones = new Application_Entity_Soluciones();
                $arrayObject['_idCategoria'] = $value['categoria'];
                $arrayObject['_nombre'] = $value['nombre'];
                $arrayObject['_imagen'] = $nameFile;
                $arrayObject['_flagActivo'] = $value['flagActivo'];
                $arrayObject['_descripcionCorta'] = $value['descripcioCorta'];
                $arrayObject['_descripcion'] = $value['descripcioLarga'];
                $soluciones->setProperties($arrayObject);
                $soluciones->createSoluciones();
                $this->_redirect('/admin/Soluciones/');
                echo 'registrado';
            }
        }
        $this->view->form = $form;
    }

    public function editSolucionesAction() {
        $form = new Application_Form_RegistroSoluciones();
        $entitySoluciones = new Application_Entity_Soluciones();
        $entitySoluciones->searchSolucion('',$this->_getParam('sol'));
        $data = $entitySoluciones->getProperties();
        $dataForm['id'] = $data['_id'];
        $dataForm['nombre'] = $data['_nombre'];
        $dataForm['flagActivo'] = $data['_flagActivo'];
        $dataForm['categoria'] = $data['_idCategoria'];
        $dataForm['descripcioCorta'] = $data['_descripcionCorta'];
        $dataForm['descripcioLarga'] = $data['_descripcion'];
        //$form->excludeValidatorNombre($data['_nombre']);
        $form->populate($dataForm);
        $path = CST_Server_ServerDinamic::getUrl().
                '/img/imagen-soluciones/'.
                $data['_imagen']; 
        $form->setImagen($path);
        
        if ($this->_request->isPost()) {
            if ($form->isValid($this->_request->getParams())) {
                $soluciones = new Application_Entity_Soluciones();
                $extn = pathinfo($form->imagen->getFileName(), PATHINFO_EXTENSION);
                $nameFile = 'imagen_soluciones_' . time('H:i:s') . '.' . $extn;
                $rutaFileAbs = $form->imagen->getDestination() . '/' . $nameFile;
                $form->imagen->addFilter('Rename', array('target' => $rutaFileAbs, 'overwrite' => true));
                if(!$form->imagen->receive()){
                    echo 'no subio la imagen';
                }
                $values = $form->getValues();
                $arrayObject['_id'] = $values['id'];
                $arrayObject['_idCategoria'] = $values['categoria'];
                $arrayObject['_nombre'] = $values['nombre'];
                $arrayObject['_imagen'] = $nameFile;
                $arrayObject['_flagActivo'] = $values['flagActivo'];
                $arrayObject['_descripcionCorta'] = $values['descripcioCorta'];
                $arrayObject['_descripcion'] = $values['descripcioLarga'];
                //var_dump($arrayObject);
                $soluciones->setProperties($arrayObject);
                $soluciones->editSoluciones();
                $this->_redirect('/admin/soluciones/edit-soluciones/sol/'.$this->_getParam('sol'));
            }
        }
        $this->view->form = $form;
    }
    //put your code here
}

?>
