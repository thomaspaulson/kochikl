<?php
//
class EatDrink extends ContentHolder{    
    private static $hide_ancestor = 'ContentHolder';
}
//
class EatDrink_Controller extends ContentHolder_Controller{
    
    public function init(){
        parent::init();
        $this->PageType = 'EatDrinkPage';
    }
}    