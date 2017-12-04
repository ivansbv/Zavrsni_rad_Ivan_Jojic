<?php
$article_1 = Article::get(1);
$article_2 = Article::get(2);
$article_3 = Article::get(3);
$article_4 = Article::get(4);
?>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>IVI-SISTEM</title>
    <link rel="stylesheet" type="text/css" href="mystyle.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <script src="myJavaScript.js"></script>
</head>
<body>
	<div id="wrapper">
        <div id="nav">
        	<a href="POCETNA"><img src="images/logo.png" alt="logo-nav"></a>
            <ul>
                <li><a href="POCETNA">POČETNA</a></li>
                <li><a href="O_NAMA">O NAMA</a></li>
                <li><a href="USLUGE">USLUGE</a></li>
                <li><a href="REFERENCE">REFERENCE</a></li>
                <li><a href="CENOVNIK">CENOVNIK</a></li>
                <li><a href="KONTAKT">KONTAKT</a></li>
            </ul>
        </div><!--end nav-->
     	<div id="header">
            <div>
               <img src="images/front/lisca-front.jpg" alt="lisca-front">
            </div>
            <div>
               <img src="images/front/mkc-resize.jpg" alt="mkc-front">
            </div>
            <div>
               <img src="images/front/nps-front.jpg" alt="nps-front">
            </div>
    	</div><!--end header-->
        <div id="pokusaj">
        </div><!--end pokusaj-->
        <div id="main">
        	<div class="ceo_paragraf">
            	<h2><?=$article_1->naslov?></h2>
                <p><?=$article_1->sadrzaj?></p>
            </div>
            <div class="ceo_paragraf">
                <h3><?=$article_2->naslov?></h3>
                <img src="<?=$article_2->slika?>" class="slika_paragraf">
                <p class="paragraf_text"><?=$article_2->sadrzaj?></p>  
        	</div>
            <div class="ceo_paragraf">
                <h3><?=$article_3->naslov?></h3>
                <img src="<?=$article_3->slika?>" class="slika_paragraf">
                <p class="paragraf_text"><?=$article_3->sadrzaj?></p>
            </div>
            <div class="ceo_paragraf">
                <h3><?=$article_4->naslov?></h3>
                <img src="<?=$article_4->slika?>" class="slika_paragraf">
                <p class="paragraf_text"><?=$article_4->sadrzaj?></p>
            </div>
            <div id="article">
            </div><!--end article-->
    	</div><!--end main-->
        <div id="sidebar">
            <?php
                $conn = Connection::getConnection();
                $res = $conn->query("SELECT * FROM reklame");
                foreach ($res->fetchAll() as $rw) { ?>
                  <a href="<?=$rw['link']?>" target="_blank"><img src="<?=$rw['slika']?>"></a>
            <?php } ?>
    	</div><!--end sidebar-->
        <div id="footer">
        <p>Copyright © 2016 ivi-sistem.rs</p> 
    	</div><!--end footer-->
    </div>
</body>
</html>