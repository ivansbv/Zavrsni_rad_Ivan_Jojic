<?php
class Price extends Base{
    static $tableName = "cenovnik";
    function insert(){
        $conn = Connection::getConnection();
        $conn->query("INSERT INTO cenovnik VALUES(null,'{$this->vrsta_radova}','{$this->mera}','{$this->cena}')");
    }
}



//$var = Price::get(38);
/*
$var = new Price;
$var->vrsta_radova = "Opis_pozicije_radova";
$var->mera = "Jedinica_mere";
$var->cena = "Cena_po_jedinici_mere";
$var->insert();
*/
//Price::remove(43);