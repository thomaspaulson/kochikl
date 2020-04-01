<?php
//
class TypeTag extends DataObject 
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
     * @var array
     */
    private static $extensions = array(
        'GenerateURLExtension',
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

    /**
     * Returns a relative URL for the tag link.
     *
     * @return string
     */
    public function getLink()
    {
        return Controller::join_links($this->ContentHolder()->Link(), 'type', $this->URLSegment);
    }
    
}
