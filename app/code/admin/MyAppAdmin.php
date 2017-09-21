<?php
class MyAppAdmin extends ModelAdmin{
    private static $menu_title = 'MyApp';

    private static $url_segment = 'apps';

    private static $managed_models = array (
        'Location'
    );    
}