<?php
//
class GalleryImage extends DataObject{
    /**
     *var array
     */
    private static $db = array(		
        'SortOrder' => 'Int',
        'Title' => 'Varchar(100)'
    );

    private static $has_one = array(
        'Page' => 'Page',
        'Image' => 'Image'
    );

    private static $summary_fields = array(
      'Image.CMSThumbnail' => 'Image'	  
    );

    private static $default_sort = 'SortOrder ASC';
    
    public function Index($position){
        return --$position;
    }
}