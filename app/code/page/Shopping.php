<?php
//
class Shopping extends ContentHolder{    
    private static $hide_ancestor = 'ContentHolder';
}
//
class Shopping_Controller extends ContentHolder_Controller{
    
    public function init(){
        parent::init();
        $this->PageType = 'ShoppingPage';
    }
}    