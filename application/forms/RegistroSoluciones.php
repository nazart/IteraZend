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
class Application_Form_RegistroSoluciones extends CST_Form {
    //put your code here
    function init() {
        parent::init();
        $this->setMethod('Post');
        $this->setAttrib('enctype', 'multipart/form-data');
        $this->addElement(new Zend_Form_Element_Hidden('id'));
        $this->addElement(new Zend_Form_Element_Select('categoria',
                array(
                    'label'=>'categoria',
                    'multioptions'=>  CST_Utils::fetchPairs(Application_Entity_CategoriaSolucion::listarCategoriaSolucion())
                )));
        $this->addElement(new Zend_Form_Element_Text('nombre',
                array('label'=>'Nombre',
                    'required'=>true,
                    'validators'=>array(new Zend_Validate_Alnum(true)),
                    'maxlength'=>'200',
                    'size'=>'40')));
        $this->addElement(new Zend_Form_Element_Image('imagenUpload'));
        
        $element = new Zend_Form_Element_File('imagen');
        $element->setLabel('Upload an image:')
                ->setDestination(APPLICATION_PATH.
                        '/../public/dinamic/img/imagen-soluciones/');
        $element->addValidator('Count', false, 1);
        $element->addValidator('Size', false, 102400);
        $element->addValidator('Extension', false, 'jpg,png,gif');
        $this->addElement($element);
        
        $this->addElement(new Zend_Form_Element_Radio('flagActivo',
                array(
                    'label'=>'Activar',
                    'value'=>'1',
                    'multioptions'=>array(
                        '1'=>'Activo',
                        '0'=>'Desactivo')
                    )));
        $this->addElement(new Zend_Form_Element_Textarea('descripcioCorta',
                array('label'=>'Descripcion Corta',
                    'required'=>true,
                    'rows'=>'10',
                    )));
        $this->addElement(new Zend_Form_Element_Textarea('descripcioLarga',
                array('label'=>'Descripcion Larga',
                    'required'=>true,
                    )));
        $this->addElement(new Zend_Form_Element_Submit('Enviar',
                array('attribs'=>array('class'=>'submit-button'))));
    }
    function setImagen($path){
        $imagen = $this->getElement('imagenUpload');
        $imagen->setImage($path);
    }
}

?>
