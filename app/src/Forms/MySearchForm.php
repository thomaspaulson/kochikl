<?php
namespace KochiKL\Forms;


use SilverStripe\CMS\Search\SearchForm;

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
class MySearchForm extends SearchForm
{
    function __construct($controller, $name, $fields = null, $actions = null) {
        parent::__construct($controller, $name, $fields, $actions);
    }
}