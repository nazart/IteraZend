<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of NavigatonCustom
 *
 * @author Laptop
 */
class CST_NavigatonCustom  {
    static function gethtmlPages($page,$nivel=1) {
        $html = '';
        $count=$nivel;
        $classNivel = 'menuNivel'.$nivel;
        $style='';
        if($nivel>1){
            $style =' Style ="display:none;" ';
        }
        $html .= "<ul class='".$classNivel."' $style>\n";
        foreach ($page as $subpage) {
            if($subpage->_class==''){
            $html .= "<li>\n";
            }else{
                $html .= "<li class='".$subpage->_class."'>\n";
            }
            if ($subpage->isActive()) {
                $html .= "<a href='" . $subpage->getHref() . "' class='selected'>" . $subpage->getLabel() . "</a>\n";
                
            } else {
                $html .= "<a href='" . $subpage->getHref() . "'>" . $subpage->getLabel() . "</a>\n";
            }
            if(!empty($subpage->pages)){
                $count++;
                $html .= self::gethtmlPages($subpage->pages,$count);
            }
            $html .= "</li>\n";
            if($nivel==1){
                $html .= '<li><img src="' . CST_Server_ServerStatic::getUrl() . '/images/nav_item_split.jpg" alt="nav separator" /></li>'."\n";
            }
        }
        $html .= "</ul>\n";
        return $html;
    }
}

?>
