<?php
//
class Location extends DataObject{
    
    /**
     * @var array
     */
    private static $db = array(
        'Title' => 'Varchar(255)',
        'Area' => 'Varchar(255)',
        'URLSegment' => 'Varchar(255)',        
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
            TextField::create('Title', 'Title'),
            TextField::create('Area', 'Area (ie FortKochi, MattanCherry,Palluruthy)')
        );

        
        $this->extend('updateCMSFields', $fields);

        return $fields;
    }


    /**
     * {@inheritdoc}
     */
    public function onBeforeWrite()
    {
        parent::onBeforeWrite();
        $this->generateURLSegment();
    }

    /**
     * Generates a unique URLSegment from the title.
     *
     * @param int $increment
     *
     * @return string
     */
    public function generateURLSegment($increment = null)
    {
        $filter = new URLSegmentFilter();

        // Setting this to on. Because of the UI flow, it would be quite a lot of work
        // to support turning this off. (ie. the add by title flow would not work).
        // If this becomes a problem we can approach it then.
        // @see https://github.com/silverstripe/silverstripe-blog/issues/376
        $filter->setAllowMultibyte(true);

        $this->URLSegment = $filter->filter($this->Title);

        if (is_int($increment)) {
            $this->URLSegment .= '-' . $increment;
        }

        // Postgres use '' instead of 0 as an emtpy blog ID
        // Without this all the tests fail
        if (!$this->ID) {
            $this->ID = 0;
        }

        $duplicate = DataList::create($this->ClassName)->filter(array(
            'URLSegment' => $this->URLSegment,
            'ID' => $this->ID,
        ));

        if ($this->ID) {
            $duplicate = $duplicate->exclude('ID', $this->ID);
        }

        if ($duplicate->count() > 0) {
            if (is_int($increment)) {
                $increment += 1;
            } else {
                $increment = 0;
            }

            $this->generateURLSegment((int) $increment);
        }

        return $this->URLSegment;
    }

}

