<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of ConcatenosController
 *
 * @author Laptop
 */
class Default_ContactenosController extends CST_Controller_ActionDefault {

    public function init() {
        parent::init();
        /* Initialize action controller here */
    }

    public function indexAction() {
        $this->view->headLink()->appendStylesheet(CST_Server_ServerStatic::getUrl() . '/css/soporte.css');
        $form = new Application_Form_Contactenos();
        $this->view->flashMessenger = $this->_flashMessenger->getMessages();
        if ($this->_request->isPost()) {
            if ($form->isValid($this->_getAllParams())) {
               $this->_flashMessenger->addMessage('La consulta se registro correctamente: En breve nos estaremos poniendo en contacto con usted Gracias!');
               $this->_redirect('/contactenos');
            }else{
                $this->_flashMessenger->addMessage('Corriga los datos');
            }
        }
        $this->view->form = $form;
    }

}

?>
