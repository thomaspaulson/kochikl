<?php
//
class Shopping extends ContentHolder{    
    private static $hide_ancestor = 'ContentHolder';
    
    private static $allowed_children = array('ShoppingPage');    
}
//
class Shopping_Controller extends ContentHolder_Controller{
    
    public function init(){
        parent::init();
        $this->pageType = 'ShoppingPage';
    }
    
    public function Form(){        
        $form = parent::Form();
        //$form->setTemplate('ShoppingSearchForm');
        $form->loadDataFrom($_REQUEST);
        return $form;
    }
    
}    