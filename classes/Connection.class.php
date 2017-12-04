<?php
class Connection{
    private static $conn = null;
    public static function getConnection(){
        if (!self::$conn) {
            self::$conn = new PDO("mysql:host=".DBHOST.";dbname=".DBNAME.";charset=utf8",DBUSER,DBPASS);
        }
        return self::$conn;
    }
}