<?php
//
class PageTag extends DataObject 
{

    /**
     * @var array
     */
    private static $db = array(
        'Title' => 'Varchar(255)',
    );

    /**
     * @var array
     */
    private static $has_one = array(
        'ContentHolder' => 'ContentHolder', 
    );

    
    /**
     * @var array
     */
    private static $belongs_many_many = array(
        'ContentPages' => 'ContentPage',
    );


    /**
     * {@inheritdoc}
     */
    public function getCMSFields()
    {
        $fields = new FieldList(
            TextField::create('Title', 'Title')
        );  

        return $fields;
    }

}
