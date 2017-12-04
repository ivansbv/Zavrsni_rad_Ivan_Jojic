<?php
class Article extends Base{
    static $tableName = "clanci";
    function insert(){
        $conn = Connection::getConnection();
        $conn->query("INSERT INTO clanci VALUES(null,'{$this->naslov}','{$this->sadrzaj}','{$this->slika}','{$this->strana_id}')");
    }
}



//$var = Article::get(7);
/*
U index.php-u:
$var = new Article;
$var->naslov = "Tekst_naslova";
$var->sadrzaj = "Tekst_sadržaja";
$var->slika = "Putanja_slike";
$var->strana_id = "7";
$var->insert();
*/
//Article::remove(22);
 
 