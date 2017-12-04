<?php
define("APP_DIR","C:/wamp64/www/ivi-sistem/");
define("DBHOST","localhost");
define("DBUSER","root");
define("DBPASS","");
define("DBNAME","ivi-sistem");
function __autoload($cname){
    require_once "classes/{$cname}.class.php";
}
