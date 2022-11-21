<?php

namespace {

    use SilverStripe\Forms\DateField;
    use SilverStripe\Forms\TextareaField;
    use SilverStripe\Forms\TextField;
    use SilverStripe\Forms\LabelField;
    use SilverStripe\Forms\FieldList;
    use SilverStripe\Forms\FormAction;
    use SilverStripe\Forms\Form;
    use SilverStripe\Forms\CheckBoxField;
    use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
    use SilverStripe\Assets\Image;
    use SilverStripe\Assets\File;
    use SilverStripe\AssetAdmin\Forms\UploadField;
    use SilverStripe\CMS\Model\SiteTree;
    use SilverStripe\Forms\GridField\GridField;
    use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;


    class HotelMe extends Page
    {

        private static $icon_class = 'font-icon-p-home';

        private static $db = [
            'AffiliateHomeText' => 'HTMLText',
            'TextH1' => 'Text',
            'TextH2' => 'Text',
            'HeaderHomeHeadline' => 'Text',
            'HeaderHomeBeschreibung' => 'Text',

        ];

  

        private static $has_many = [
            'Hotels' => Hotels::class,

        ];

        private static $has_one = [
            'HeaderBild' => Image::class,
        ];
        public function getCMSFields()
        {
            $fields = parent::getCMSFields();
            $fields->addFieldToTab('Root.Header', UploadField::create('HeaderBild'));
            $fields->addFieldToTab('Root.Header', TextField::create('HeaderHomeHeadline'));
            $fields->addFieldToTab('Root.Header', TextareaField::create('HeaderHomeBeschreibung'));
            $fields->addFieldToTab('Root.Startseite', HTMLEditorField::create('AffiliateHomeText'));


            // Hotel Bereich
            $fields->addFieldToTab('Root.Main', TextField::create('TextH1'));
            $fields->addFieldToTab('Root.Main', TextareaField::create('TextH2'));
       



            $fields->addFieldsToTab('Root.Hotels', GridField::create(
                'Hotels',
                'Hotels auf dieser Seite',
                $this->Hotels(),
                GridFieldConfig_RecordEditor::create()

            ));






            return $fields;
        }
    }
}