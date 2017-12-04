<?php
abstract class Base{
    static function get($id){
        $className = get_called_class();
        $conn = Connection::getConnection();
        $tableName = static::$tableName;   
        $res = $conn->query("SELECT * FROM {$tableName} WHERE id={$id}");
        $res->setFetchMode(PDO::FETCH_CLASS,$className);
        $rw= $res->fetch();
        return $rw;
    }
    static function remove($id){
        $conn = Connection::getConnection();
        $tableName = static::$tableName;
        $conn->query("DELETE FROM {$tableName} WHERE id='{$id}'");
    }
}


 //static -odnosi se na statičko polje klase
 //setFetchMode-menja podrazumevani PDO