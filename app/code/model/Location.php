<?php
//
class Location extends DataObject{
    
    /**
     * @var array
     */
    private static $db = array(
        'Title' => 'Varchar(255)',
        'Area' => 'Varchar(255)',
    );

        /**
     * {@inheritdoc}
     */
    public function getCMSFields()
    {
        $fields = new FieldList(
            TextField::create('Title', 'Title'),
            TextField::create('Area', 'Area (ie FortKochi, MattanCherry,Palluruthy)')
        );

        
        $this->extend('updateCMSFields', $fields);

        return $fields;
    }


}

