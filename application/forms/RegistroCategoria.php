<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of RegistroCategoria
 *
 * @author Laptop
 */
class Application_Form_RegistroCategoria extends CST_Form {
    //put your code here
     function init() {
        parent::init();
        
        $this->addElement(new Zend_Form_Element_Hidden('idCategoria'));
        $this->addElement(new Zend_Form_Element_Select('area',
                array(
                    'label'=>'Area',
                    'multioptions'=>  CST_Utils::fetchPairs(Application_Entity_Area::listarAreas())
                )));
        
        $this->addElement(new Zend_Form_Element_Text('nombreCategoria',
                array('label'=>'Nombre:',
                    'required'=>true,
                    'maxlength'=>'200',
                    'validators'=>array(
                        'NoRecordExists'=>
                        new Zend_Validate_Db_NoRecordExists(array(
                            'table'=>'categoriaproducto',
                            'field'=>'NombreCategoriaProducto')
                                ),
                        'AlfaNum'=>new Zend_Validate_Alnum(true)
                        ),
                    'size'=>'40')));
        $this->addElement(new Zend_Form_Element_Radio('flagActivo',
                array(
                    'label'=>'Activar',
                    'value'=>'1',
                    'multioptions'=>array(
                        '1'=>'Activo',
                        '0'=>'Desactivo')
                    )));
        
        $this->addElement(new Zend_Form_Element_Submit('Enviar',
                array('attribs'=>array('class'=>'submit-button'))));
    }
    function excludeValidatorNombre($nombre){
        $validator = $this->getElement('nombreCategoria')->getValidator('NoRecordExists');
        $validator->setExclude(array(
            'field' => 'NombreCategoriaProducto',
            'value' => $nombre));
    }
}

?>
