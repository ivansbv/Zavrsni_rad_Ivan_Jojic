<?php
$article_5 = Article::get(5);
$article_6 = Article::get(6);
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
                <h2><?=$article_5->naslov?></h2>
                <img src="<?=$article_5->slika?>" class="slika_paragraf">
            	<p class="paragraf_text"><?=$article_5->sadrzaj?></p>
            </div>
            <div class="ceo_paragraf">
            	<h2><?=$article_6->naslov?></h2>
                <img src="<?=$article_6->slika?>" class="slika_paragraf">
                <p class="paragraf_text"><?=$article_6->sadrzaj?></p>
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
