<?php
//
class ContentPage extends Page
{
    private static $db = array(
    );

    private static $has_one = array(
        'FeaturedImage' => 'Image',
        'Location' => 'Location'
    );
    
    private static $many_many = array(
        'TypeTags' => 'TypeTag'
    );
    
    public static $can_be_root = false;
    
    /**
     * {@inheritdoc}
     */
    public function getCMSFields()
    {
        $fields = parent::getCMSFields();               
        
        $fields->insertAfter(            
            $uploadField = new UploadField('FeaturedImage', 'Featured image'),
            'Content'
        );
        $uploadField->setFolderName('Uploads/'. strtolower($this->parent()->ClassName));
        
        $fields->addFieldToTab('Root.Categorisation',
                DropdownField::create('LocationID','Location', Location::get()->map('ID','Title'))
                ->setEmptyString('Location')
                );
        $parent = $this->Parent();       
        
        $typeTags = $parent instanceof ContentHolder
            ? $parent->TypeTags()
            : TypeTag::get();

        $tagField = TagField::create(
                'TypeTags',
                'Type',
                $typeTags,
                $this->TypeTags()
            )
            ->setCanCreate(false)
            ->setShouldLazyLoad(true);        
        
        $fields->addFieldsToTab('Root.Categorisation', array(            
            $tagField
        ));       

        return $fields;
    }        
    
    public function Form(){        
        $parent = $this->Parent();
        $form = $parent->Form();        
        return $form; 
    }    
}
//
class ContentPage_Controller extends Page_Controller
{
    /**
     * An array of actions that can be accessed via a request. Each array element should be an action name, and the
     * permissions or conditions required to allow the user to access it.
     *
     * <code>
     * array (
     *     'action', // anyone can access this action
     *     'action' => true, // same as above
     *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
     *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
     * );
     * </code>
     *
     * @var array
     */
    private static $allowed_actions = array(
    );

    public function init()
    {
        parent::init();
        // You can include any CSS or JS required by your project here.
        // See: http://doc.silverstripe.org/framework/en/reference/requirements
    }    
    
}