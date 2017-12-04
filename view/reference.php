<?php
$article_14 = Article::get(14);
$article_15 = Article::get(15);
$article_16 = Article::get(16);
$article_17 = Article::get(17);
$article_18 = Article::get(18);
?>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>IVI-SISTEM</title>
    <link rel="stylesheet" type="text/css" href="mystyle.css">
    <script src="https://code.jquery.com/jquery-3.0.0.js"></script>
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
               <img src="images/front/lisca-front.jpg" alt="roda-front">
            </div>
            <div>
               <img src="images/front/mkc-resize.jpg" alt="roda-front">
            </div>
            <div>
               <img src="images/front/nps-front.jpg" alt="roda-front">
            </div>
        </div><!--end header-->
        <div id="pokusaj">
        </div><!--end pokusaj-->
        <div id="main">
            <div class="ceo_paragraf">
                <h3><?=$article_14->naslov?></h3>
                <p><?=$article_14->sadrzaj?></p>
            </div>
            <div class="ceo_paragraf">
            	<h4><?=$article_15->naslov?></h3>
                <img src="<?=$article_15->slika?>" class="slika_paragraf">
            	<p class="paragraf_text"><?=$article_15->sadrzaj?></p>
            </div>
            <div class="ceo_paragraf">
                <h4><?=$article_16->naslov?></h3>
                <img src="<?=$article_16->slika?>" class="slika_paragraf">
                <p class="paragraf_text"><?=$article_16->sadrzaj?></p>
            </div>
            <div class="ceo_paragraf">
                <h4><?=$article_17->naslov?></h3>
                <img src="<?=$article_17->slika?>" class="slika_paragraf">
                <p class="paragraf_text"><?=$article_17->sadrzaj?></p>
            </div>
            <div class="ceo_paragraf">
                <h4><?=$article_18->naslov?></h3>
                <img src="<?=$article_18->slika?>" class="slika_paragraf">
                <p class="paragraf_text"><?=$article_18->sadrzaj?></p>
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
