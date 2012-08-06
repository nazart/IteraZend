<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Action
 *
 * @author Laptop
 */
class CST_Controller_Action extends Zend_Controller_Action {
    
    public $_session;
    public $_flashMessenger;
    public function init()
    {
        parent::init();
        $this->_session = new Zend_Session_Namespace('kmComputer');
        $this->view->nameController = $this->getRequest()->getControllerName();
        $this->view->nameAction = $this->getRequest()->getActionName();
        $this->_flashMessenger = $this->_helper->getHelper('FlashMessenger');
    }
}
