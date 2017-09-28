<?php
//
class EatDrink extends ContentHolder{    
    
    private static $hide_ancestor = 'ContentHolder';    
    private static $allowed_children = array('EatDrinkPage');    
    
}
//
class EatDrink_Controller extends ContentHolder_Controller{
    
    public function init(){
        parent::init();
        $this->pageType = 'EatDrinkPage';
    }
    
}    