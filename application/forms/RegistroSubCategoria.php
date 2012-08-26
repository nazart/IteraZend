<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of RegistroSubCategoria
 *
 * @author Laptop
 */
class Application_Form_RegistroSubCategoria extends CST_Form {
    //put your code here
     function init() {
        parent::init();
        
        $this->addElement(new Zend_Form_Element_Hidden('idSubCategoria'));
        $this->addElement(new Zend_Form_Element_Select('categoria',
                array(
                    'label'=>'categoria',
                    'multioptions'=>  CST_Utils::fetchPairs(Application_Entity_Categoria::listarCategorias())
                )));
        
        $this->addElement(new Zend_Form_Element_Text('nombreSubCategoria',
                array('label'=>'Nombre:',
                    'required'=>true,
                    'maxlength'=>'200',
                    'validators'=>array(
                        'NoRecordExists'=>
                        new Zend_Validate_Db_NoRecordExists(array(
                            'table'=>'subcategoriaproducto',
                            'field'=>'NombreSubCategoriaProducto')
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
        $validator = $this->getElement('nombreSubCategoria')->getValidator('NoRecordExists');
        $validator->setExclude(array(
            'field' => 'NombreSubCategoriaProducto',
            'value' => $nombre));
    }
}

?>
