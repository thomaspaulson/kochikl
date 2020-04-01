<?php
//
class Event extends ContentHolder
{
    /**
     * @var array
     */
    //private static $has_many = array(
    //    'PriceTags' => 'PriceTag',
    //);
    
    private static $hide_ancestor = 'ContentHolder';
    
    private static $allowed_children = array('EventPage');        
    /**
     * {@inheritdoc}
     */
    public function getCMSFields()
    {
        $fields = parent::getCMSFields();
        
//        $gridField = GridField::create(
//            'PriceTags',
//            'PriceTags',
//            $this->PriceTags()            
//        );
//        $gridFieldConfig = GridFieldConfig_RecordEditor::create();
//        $gridField->setConfig($gridFieldConfig);        
//
//        $fields->addFieldsToTab('Root.Categorisation', array(            
//            $gridField
//        ));

        return $fields;
    }
    
  	public function  Form(){        
	 	$controller = Controller::curr();        
	 	if($controller->class == "Event_Controller" || is_subclass_of($controller, "Event_Controller")) {
	 		return Controller::curr()->Form();
	 	}        
	 	$c = new Event_Controller($this);
	 	return $c->Form();		
  	}
    
}
//
class Event_Controller extends ContentHolder_Controller{
    
    public function init(){
        parent::init();
        $this->pageType = 'EventPage';        
    }
    
    public function  Form(){
        $form = parent::Form();
//        $price = $this->data()->PriceTags()->map('ID','Title')->toArray();
//        $price = array('all' => 'All prices') + $price;
//        $priceField = DropdownField::create('Price','Price', $price);       
//        $form->Fields()->push($priceField);
        //$form->setTemplate('EventSearchForm');
        $form->loadDataFrom($_REQUEST);
        return $form;
    }
    
    public function SearchFilterForm(){
        $form = parent::SearchFilterForm();        
//        $price = $this->data()->PriceTags()->map('ID','Title')->toArray();
//        $price = array('all' => 'All prices') + $price;
//        $priceField = OptionsetField::create('Price','Price', $price);        
//        $form->Fields()->push($priceField);        
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
    
}
