<?php
//
class HomePage extends Page{
   private static $db = array(       
   );
}
//
class HomePage_Controller extends Page_Controller{
    
    public function init(){
        parent::init();
    }
    
    protected function LatestActivites($num = 3){
        $activity = Activity::get()->first();
        if($activity){
            $parentID = $activity->ID;
            return ActivityPage::get()->filter(
                    array('ParentID'=>$parentID)
                    )->limit($num);
        }
    }
    
    protected function LatestAccommodations($num = 3){
        $stay = Stay::get()->first();
        if($stay){
            $parentID = $stay->ID;
            return StayPage::get()->filter(
                    array('ParentID'=>$parentID)
                    )->limit($num);
        }
    }
    
    protected function LatestEvents($num = 3){
        $event = Event::get()->first();
        if($event){
            $parentID = $event->ID;
            return EventPage::get()->filter(
                    array('ParentID'=>$parentID)
                    )->limit($num);
        }
    }
    
}