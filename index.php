<?php
require "config.php";

if(isset($_GET['strana'])) {
        $page = Page::get($_GET['strana']);
        Page::loadView($page->name);
    }else{
        include "view/pocetna.php";
    }


