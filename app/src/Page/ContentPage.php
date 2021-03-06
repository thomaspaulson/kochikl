<?php
//
class ContentPage extends Page
{
    private static $db = array(
        'RightContent' => 'HTMLText'
    );

    private static $has_one = array(
        'FeaturedImage' => 'Image',
        'Location' => 'Location'
    );
    
    private static $has_many = array(
        'GalleryImages' => 'GalleryImage'
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
        
        $fields->addFieldToTab('Root.RightContent',
                new HTMLEditorField("RightContent", "Right Content")
        );
        
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

        
        $silderGridFieldConfig = GridFieldConfig_RecordEditor::create();
        // remove add new button
        $silderGridFieldConfig->removeComponentsbyType('GridFieldAddNewButton');
        if(class_exists('GridFieldSortableRows')){
            $silderGridFieldConfig->addComponent(new GridFieldSortableRows('SortOrder'));
        }
        $silderGridFieldConfig->addComponent(new GridFieldBulkUpload());
        $silderGridfield = new GridField("Images", "Images", $this->GalleryImages(), $silderGridFieldConfig);
        if($this->ID){
            $silderGridFieldConfig->getComponentByType('GridFieldBulkUpload')
                ->setUfSetup('setFolderName', strtolower($this->parent()->ClassName))
                ->setUfConfig('sequentialUploads', true);
        }	
        $fields->addFieldToTab('Root.Images', $silderGridfield );


        return $fields;
    }        
    
    public function Form(){        
        $parent = $this->Parent();
        $form = $parent->Form();        
        return $form; 
    }    
    
    public function GalleryCount(){
        if($this->GalleryImages()){
            return $this->GalleryImages()->count();
        }
        return null;
    }
    
    public function EarliestGalleryImages($num =3 ){
       return $this->GalleryImages()->limit($num );
    }    
    
    /**
     * Returns the post excerpt.
     *
     * @param int $wordsToDisplay
     *
     * @return string
     */
    public function Excerpt($wordsToDisplay = 30)
    {
        /** @var HTMLText $content */
        $content = $this->dbObject('Content');
        
        return $content->Summary($wordsToDisplay);
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
        Requirements::css('app/thirdparty/lightGallery/dist/css/lightgallery.css');
        Requirements::javascript('app/thirdparty/lightGallery/dist/js/lightgallery.js');        
        
    }    
    
}