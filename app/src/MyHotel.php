<?php

use SilverStripe\Admin\ModelAdmin;

class MyHotel extends ModelAdmin 
{

    private static $managed_models = [
        Hotels::class,
    ];



    private static $url_segment = 'hotels';

    private static $menu_title = 'Hotels';
}