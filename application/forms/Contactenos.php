<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Contactenos
 *
 * @author Laptop
 */
class Application_Form_Contactenos extends CST_Form {
    //put your code here
    function init() {
        parent::init();
        $this->setMethod('Post');
        $this->addElement(new Zend_Form_Element_Text('nombres',
                array('label'=>'* Nombres: ',
                    'required'=>true,
                    'validators'=>array(new Zend_Validate_Alnum(true)),
                    'maxlength'=>'200',
                    'size'=>'40')));
        $this->addElement(new Zend_Form_Element_Text('apellidos',
                array('label'=>'* Apellidos: ',
                    'required'=>true,
                    'validators'=>array(new Zend_Validate_Alnum(true)),
                    'maxlength'=>'200',
                    'size'=>'40')));
        $this->addElement(new Zend_Form_Element_Text('empresa',
                array('label'=>'* Empresa: ',
                    'required'=>true,
                    'maxlength'=>'200',
                    'size'=>'40')));
        $this->addElement(new Zend_Form_Element_Text('telefono',
                array('label'=>'* Teléfono: ',
                    'maxlength'=>'15',
                    'validators'=>array(new Zend_Validate_Regex('/^[(0-9 *)]+$/')),
                    'required'=>true)));
        $this->addElement(new Zend_Form_Element_Text('mail',
                array('label'=>'* Email: ',
                    'required'=>true,
                    'validators'=>array(new Zend_Validate_EmailAddress()),
                    'maxlength'=>'200',
                    'size'=>'40')));
        $this->addElement(new Zend_Form_Element_Textarea('descripcion',
                array('label'=>'* Descripción: ',
                    'attribs'=>array('COLS'=>'32',
                        'ROWS'=>'4'),
                    'required'=>true)));
        $this->addElement(new Zend_Form_Element_Submit('Enviar',
                array('attribs'=>array('class'=>'submit-button'))));
    }
}

?>
