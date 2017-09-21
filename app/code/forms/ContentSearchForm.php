<?php
//
class ContentSearchForm extends Form {

    /**
     * Our constructor only requires the controller and the name of the form
     * method. We'll create the fields and actions in here.
     *
     */
    public function __construct($controller, $name) {
        
        $locations = Location::get()->map('ID','Title')->toArray();
        $locations = array('all'  => 'All locations') + $locations;
        $data = $controller->data();
        $types = $data->Tags()->map('ID','Title')->toArray();
        $types = array('all' => 'All types') + $types;
        $fields = new FieldList(
            DropdownField::create('Location','Location', $locations),
            DropdownField::create('Type','Type', $types),
            TextField::create('q','Keywords')
        );
        

        $actions = new FieldList(
            FormAction::create('doSearchForm', 'Search')
        );

        $required = new RequiredFields(array(           
        ));

        // now we create the actual form with our fields and actions defined
        // within this class
        parent::__construct($controller, $name, $fields, $actions, $required);

        // any modifications we need to make to the form.
        $this->setFormMethod('GET');        
        $this->disableSecurityToken();
        //$this->loadDataFrom($_REQUEST);
        $this->setFormAction($controller->Link('search'));        
    }    
    
}
