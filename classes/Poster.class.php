<?php
class Poster extends Base{
    static $tableName = "reklame";
    function insert(){
        $conn = Connection::getConnection();
        $conn->query("INSERT INTO reklame VALUES(null,'{$this->naziv}','{$this->slika}','{$this->link}','{$this->opis}')");
    }
}






//$var = Poster::get(5);
/*
$var = new Poster;
$var->naziv = "Naziv_reklame";
$var->slika = "Putanja do slike";
$var->link = "Link ka zakupcu";
$var->opis = "Opis ugovorenog mesta za reklamu";
$var->insert();
*/
//Poster::remove(9);