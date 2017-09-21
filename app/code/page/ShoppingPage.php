<?php
//
class ShoppingPage extends ContentPage{
     private static $hide_ancestor = 'ContentPage';
}
//
class ShoppingPage_Controller extends ContentPage_Controller{
    
    public function init(){
        parent::init();
    }
}
