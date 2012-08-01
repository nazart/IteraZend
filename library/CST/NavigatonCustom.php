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
        $html .= "<ul>\n";
        $count=$nivel;
        foreach ($page as $subpage) {
            $html .= "<li>\n";
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
