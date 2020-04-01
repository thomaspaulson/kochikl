<?php

namespace {

    use SilverStripe\CMS\Model\SiteTree;
    use SilverStripe\AssetAdmin\Forms\UploadField;
    use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
    use SilverStripe\Forms\ToggleCompositeField;
    use SilverStripe\View\ViewableData;
    
    class Page extends SiteTree
    {

        private static $db = array(
            'Summary' => 'HTMLText',        
        );
    
        private static $has_one = array(
            'FeaturedImage' => 'Image',
        );    
        
        
        public function getCMSFields() {
            $self =& $this;
    
            $this->beforeUpdateCMSFields(function ($fields) use ($self) {
                $uploadField = UploadField::create('FeaturedImage', 'Featured Image');
                $uploadField->getValidator()->setAllowedExtensions(array('jpg', 'jpeg', 'png', 'gif'));
    
                /**
                 * @var FieldList $fields
                 */
                $fields->insertAfter($uploadField, 'Content');
    
                $summary = HtmlEditorField::create('Summary', false);
                $summary->setRows(5);
    
                $summaryHolder = ToggleCompositeField::create(
                    'CustomSummary',
                    'Add A Custom Summary',
                    array(
                        $summary,
                    )
                );
                $summaryHolder->setHeadingLevel(4);
                $summaryHolder->addExtraClass('custom-summary');
    
                $fields->insertAfter($summaryHolder, 'FeaturedImage');
    
            });
            
            $fields = parent::getCMSFields();
            return $fields;
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
        
    
        public static function MyShortCodeMethod($arguments, $content = null, $parser = null, $tagName) {
            return "<em>" . $tagName . "</em> " . $content . "; " . count($arguments) . " arguments.";
        }
     
        public static function ListRandomChildPage($arguments, $content = null, $parser = null, $tagName){
            
        $className = (isset($arguments['parent']) && $arguments['parent']) ? $arguments['parent'] : 'ContentHolder';                
            $parent = $className::get()->First();
            
            $num = (isset($arguments['limit']) && $arguments['limit']) ? $arguments['limit'] : 3;
            
            $childClassName = $className.'Page';
            $randChilds = ($parent) ? $childClassName::get()->filter('ParentID', $parent->ID)->sort('RAND()')->limit($num) : false;		
            
            $BackgroundClass = (isset($arguments['bg']) && $arguments['bg']) ? $arguments['bg'] : 'red-bg';                
            $view = new ViewableData();
            $data = array(
                        'RandomChilds' => $randChilds,
                        'BackgroundClass' => $BackgroundClass
                    );
            return $view->renderWith('ListChild',$data);
        }        
    }
}
