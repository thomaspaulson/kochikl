<?php
//
class TravelPage extends ContentPage{
    
        
    private static $hide_ancestor = 'ContentPage';
    
    /**
     * {@inheritdoc}
     */
    public function getCMSFields()
    {
        $fields = parent::getCMSFields();               
        
        /*
        $parent = $this->Parent();       
        
        $priceTags = $parent instanceof ContentHolder
            ? $parent->PriceTags()
            : PriceTag::get();

        $tagField = TagField::create(
                'PriceTags',
                'Price',
                $priceTags,
                $this->PriceTags()
            )
            ->setCanCreate(false)
            ->setShouldLazyLoad(true);        
        
        $fields->addFieldsToTab('Root.Categorisation', array(            
            $tagField
        ));        
        */
        return $fields;
    }            
 
    public function Form(){        
        $parent = $this->Parent();
        $form = $parent->Form();        
        return $form; 
    }

}
//
class TravelPage_Controller extends ContentPage_Controller{
    
    public function init(){
        parent::init();
    }
}
