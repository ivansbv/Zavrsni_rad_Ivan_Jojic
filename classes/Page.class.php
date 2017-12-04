<?php
class Page extends Base{
	static $tableName = "strane";
	static function loadView($viewName){
        include "view/{$viewName}.php";
    }
}