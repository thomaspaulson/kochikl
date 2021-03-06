<?php
//
class Travel extends ContentHolder
{
    /**
     * @var array
     */
    //private static $has_many = array(
    //    'PriceTags' => 'PriceTag',
    //);
    
    private static $hide_ancestor = 'ContentHolder';
    
    private static $allowed_children = array('TravelPage');        
    /**
     * {@inheritdoc}
     */
    public function getCMSFields()
    {
        $fields = parent::getCMSFields();
    
        return $fields;
    }
    
  	public function  Form(){        
	 	$controller = Controller::curr();        
	 	if($controller->class == "Travel_Controller" || is_subclass_of($controller, "Travel_Controller")) {
	 		return Controller::curr()->Form();
	 	}        
	 	$c = new Travel_Controller($this);
	 	return $c->Form();		
  	}
    
}
//
class Travel_Controller extends ContentHolder_Controller{
    
    public function init(){
        parent::init();
        $this->pageType = 'TravelPage';        
    }
    /*
    public function  Form(){
        $form = parent::Form();
        $price = $this->data()->PriceTags()->map('ID','Title')->toArray();
        $price = array('all' => 'All prices') + $price;
        $priceField = DropdownField::create('Price','Price', $price);       
        $form->Fields()->push($priceField);
        $form->setTemplate('ActivitySearchForm');
        $form->loadDataFrom($_REQUEST);
        return $form;
    }
    
    public function SearchFilterForm(){
        $form = parent::SearchFilterForm();        
        $price = $this->data()->PriceTags()->map('ID','Title')->toArray();
        $price = array('all' => 'All prices') + $price;
        $priceField = OptionsetField::create('Price','Price', $price);        
        $form->Fields()->push($priceField);        
        $form->loadDataFrom($_REQUEST);
        return $form; 
    }
    
    public function Results(){

        $list = parent::Results();        
        
        $price = Convert::raw2sql($this->request->getVar('Price'));
        if($price!='all'){
            $list = $list->filter(array(
                'PriceTags.ID' => $price
            ));
        }
        //echo $list->sql();
        
        return $list;   
    }
    */
}
