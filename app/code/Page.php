<?php

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
    
    
}

