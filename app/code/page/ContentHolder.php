<?php
//
class ContentHolder extends Page
{
    /**
     * @var array
     */
    private static $db = array(
        'ContentPerPage' => 'Int',
    );
        
    /**
     * @var array
     */
    private static $has_many = array(
        'Tags' => 'PageTag',
    );
    
    /**
     * @var array
     */
    private static $allowed_children = array(
        'ContentPage',
    );
    
    /**
     * {@inheritdoc}
     */
    public function getCMSFields()
    {
        $fields = parent::getCMSFields();
        
        $gridField = GridField::create(
            'Tags',
            'Tags',
            $this->Tags()            
        );
        $gridFieldConfig = GridFieldConfig_RecordEditor::create();
        $gridField->setConfig($gridFieldConfig);        

        /**
         * @var FieldList $fields
         */
        $fields->addFieldsToTab('Root.Categorisation', array(            
            $gridField
        ));

        return $fields;
    }
    
    
    /**
     * Return blog posts.
     *
     * @return DataList of BlogPost objects
     */
    public function getContentPages()
    {
        $contenPages = ContentPage::get()->filter('ParentID', $this->ID);        

        return $contenPages;
    }
    
  	public function  Form(){        
	 	$controller = Controller::curr();
	 	if($controller->class == "ContentHolder_Controller" || is_subclass_of($controller, "ContentHolder_Controller")) {
	 		return Controller::curr()->SearchAccommodationForm();
	 	}
	 	$c = new ContentHolder_Controller($this);
	 	return $c->Form();
		
  	}
    
}
//
class ContentHolder_Controller extends Page_Controller
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
        'search'
    );

    /**
     * The current Blog Post DataList query.
     *
     * @var DataList
     */
    protected $contentPages;

    protected $PageType;
    
    public function init()
    {
        parent::init();
        // You can include any CSS or JS required by your project here.
        // See: http://doc.silverstripe.org/framework/en/reference/requirements
    }
    
    
    public function index(){
        /**
         * @var Blog $dataRecord
         */
        $dataRecord = $this->dataRecord;

        $this->contentPages = $dataRecord->getContentPages();
        
        return $this->render();
    }

    public function Form(){        
        $form = new ContentSearchForm($this, 'ContentSearchForm');
        $form->loadDataFrom($_REQUEST);
        return $form; 
    }

    public function SearchFilterForm(){        
        $form = new ContentSearchFilterForm($this, 'ContentSearchFilterForm');
        $form->loadDataFrom($_REQUEST);
        return $form; 
    }
    
    public function search(){
		$this->title = 'Search';
		$this->contentPages = $this->Results();        
        return $this->render();
    }    
    
    public function Results(){
        $pageType = ($this->PageType)?$this->PageType:'ContentPage';
        $list = $pageType::get();

        $keyword = Convert::raw2sql($this->request->getVar('q'));
        if($keyword){
            $list = $list->filterAny(array(
                'Title:PartialMatch' => $keyword,
                'Content:PartialMatch' => $keyword
            ));
        }
        
        $location = Convert::raw2sql($this->request->getVar('Location'));
        if($location!='all'){
            $list = $list->filter(array(
                'LocationID' => $location
            ));
        }

        $type = Convert::raw2sql($this->request->getVar('Type'));
        if($type!='all'){
            $list = $list->filter(array(
                'PageTags.ID' => $type
            ));
        }
        
        return  $list;       
    }
    
    public function PaginatedList(){
        $allPosts = $this->contentPages ?: new ArrayList();

        $posts = new PaginatedList($allPosts);

        // Set appropriate page size
        if ($this->ContentPerPage > 0) {
            $pageSize = $this->ContentPerPage;
        } elseif ($count = $allPosts->count()) {
            $pageSize = $count;
        } else {
            $pageSize = 99999;
        }
        $posts->setPageLength($pageSize);

        // Set current page
        $start = $this->request->getVar($posts->getPaginationGetVar());
        $posts->setPageStart($start);

        return $posts;        
    }
    
}