<?php

namespace {

    use SilverStripe\CMS\Controllers\ContentController;

    class HotelMeController extends ContentController
    {

        private static $allowed_actions = [];

        protected function init()
        {
            parent::init();
            // You can include any CSS or JS required by your project here.
            // See: https://docs.silverstripe.org/en/developer_guides/templates/requirements/
        }
    }
}