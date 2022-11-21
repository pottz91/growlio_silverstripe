<?php

use SilverStripe\ORM\DataObject;
use SilverStripe\Assets\Image;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\CMS\Model\SiteTree;
use SilverStripe\CMS\Model\SiteTreeLink;
use SilverStripe\Forms\CheckboxField;
use SilverStripe\Forms\TreeDropdownField;
use SilverStripe\Forms\NumericField;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;

class Hotels extends DataObject
{

  private static $db = [
    'HotelName' => 'Text',
    'HotelBewertung' => 'HTMLText',
    'Benefit' => 'Text',
    'Link' => 'Text',
    'Ort' => 'Text'
  ];

  private static $has_one = [
    'HotelMe' => HotelMe::class,

  ];

  private static $searchable_fields = [
    'HotelName',
 ];


  public function getCMSFields()
  {
    $fields = FieldList::create(
      TextField::create('HotelName'),
      HTMLEditorField::create('HotelBewertung'),
      TextField::create('Benefit'),
      TextField::create('Ort'),
      TextField::create('Link')

    );


    return $fields;
  }
}
