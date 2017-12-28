<?php
//
class ContentHolder extends Page
{
    /**
     * @var array
     */
    private static $db = array(
        'ContentsPerPage' => 'Int',
    );
        
    /**
     * @var array
     */
    private static $has_many = array(
        'TypeTags' => 'TypeTag',
    );
    
    /**
     * @var array
     */
    private static $allowed_children = array(
        'ContentPage',
    );
    
    /**
     * @var array
     */
    private static $defaults = array(
        //'ProvideComments' => false,
        'ContentsPerPage' => 15,
    );
    
    /**
     * {@inheritdoc}
     */
    public function getCMSFields()
    {
        $fields = parent::getCMSFields();
        
        $gridField = GridField::create(
            'Types',
            'Types',
            $this->TypeTags()            
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
    
    public function getSettingsFields()
    {
        $fields = parent::getSettingsFields();
        
        $fields->addFieldToTab('Root.Settings',
            NumericField::create('ContentsPerPage', _t('ContentHolder.ContentsPerPage', 'Posts Per Page'))
        );
        
        return $fields;
    }    
    
    /**
     * Return blog posts.
     *
     * @return DataList of BlogPost objects
     */
    public function getContentPages()
    {
        $contenPages = ContentPage::get()->filter('ParentID', $this->ID)
                        ->sort('ID DESC');        

        return $contenPages;
    }
    
  	public function  Form(){        
	 	$controller = Controller::curr();        
	 	if($controller->class == "ContentHolder_Controller" || is_subclass_of($controller, "ContentHolder_Controller")) {
	 		return Controller::curr()->Form();
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
        'search',
        'type'
    );

    /**
     * @var array
     */
    private static $url_handlers = array(
        'type/$Type!' => 'type',
    );
    
    /**
     * The current Blog Post DataList query.
     *
     * @var DataList
     */
    protected $contentPages;

    protected $pageType, $hideBanner;
    
    
    public function init()
    {
        parent::init();
        // You can include any CSS or JS required by your project here.
        // See: http://doc.silverstripe.org/framework/en/reference/requirements        
        $this->hideBanner = false;
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
        //get page type ie ActivityPage, EventPage,StayPage
        $pageType = ($this->pageType)?$this->pageType:'ContentPage';
        $list = $pageType::get();
        //echo $pageType;
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
                'TypeTags.ID' => $type
            ));
        }
        
        $sort = Convert::raw2sql($this->request->getVar('sort'));
        if($sort){
            
        }
        else{
            $list = $list->sort('ID DESC');
        }
        //Debug::show($list);
        return  $list;       
    }
    
    
    /**
     * Renders the blog posts for a given tag.
     *
     * @return null|SS_HTTPResponse
     */
    public function type()
    {
        //
        $this->hideBanner = true;
        
        $typeTag = $this->getCurrentType();
        
        if ($typeTag) {
            $this->contentPages = $typeTag->ContentPages();
            return $this->render();
            //return $this->renderWith(array('ContentHolder_search','Page'));
            
            /*
            if($this->isRSS()) {
            	return $this->rssFeed($this->contentPages, $typeTag->getLink());
            } else {
            	return $this->render();
            }
            */
        }

        $this->httpError(404, 'Not Found');

        return null;
    }
    
    
    /**
     * Tag Getter for use in templates.
     *
     * @return null|BlogTag
     */
    public function getCurrentType()
    {
        /**
         * @var Blog $dataRecord
         */
        $dataRecord = $this->dataRecord;
        $type = $this->request->param('Type');
        if ($type) {
            return $dataRecord->TypeTags()
                ->filter('URLSegment', array($type, rawurlencode($type)))
                ->first();
        }
        return null;
    }

    
    public function PaginatedList(){
        $allPosts = $this->contentPages ?: new ArrayList();

        $posts = new PaginatedList($allPosts);

        // Set appropriate page size
        if ($this->ContentsPerPage > 0) {
            $pageSize = $this->ContentsPerPage;
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
    
    
    protected function DisplayBanner(){
        return $this->hideBanner?false:true;
    }
}