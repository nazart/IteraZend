<?php

class Application_Form_RegistroMarca extends CST_Form {
    //put your code here
     function init() {
        parent::init();        
        $this->addElement(new Zend_Form_Element_Hidden('idMarca'));        
        $this->addElement(new Zend_Form_Element_Text('nombreMarca',
                array('label'=>'Nombre Marca:',
                    'required'=>true,
                    'maxlength'=>'100',
                    'validators'=>array(
                        'NoRecordExists'=>
                        new Zend_Validate_Db_NoRecordExists(array(
                            'table'=>'marca',
                            'field'=>'NombreMarca')
                                ),
                        'AlfaNum'=>new Zend_Validate_Alnum(true)
                        ),
                    'size'=>'40')));

       
       $this->addElement(new Zend_Form_Element_Image('imagenUpload'));
        
       $element = new Zend_Form_Element_File('imagenMarca');
       $element->setLabel('Upload an image:')
                ->setDestination(APPLICATION_PATH.
                        '/../public/dinamic/img/marca/');
       $element->addValidator('Count', false, 1);
       $element->addValidator('Size', false, 1024000);
       $element->addValidator('Extension', false, 'jpg,png,gif');
       $this->addElement($element);
       
       
       
        $this->addElement(new Zend_Form_Element_Submit('Enviar',
                array('attribs'=>array('class'=>'submit-button'))));
    }
    function excludeValidatorNombre($nombre){
        $validator = $this->getElement('nombreMarca')->getValidator('NoRecordExists');
        $validator->setExclude(array(
            'field' => 'NombreMarca',
            'value' => $nombre));
    }
}

?>
