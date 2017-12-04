<?php
$article_19 = Article::get(19);
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
              <h2><?=$article_19->naslov?></h2>
              <img src="<?=$article_19->slika?>" class="slika_paragraf">
              <p class="paragraf_text"><?=$article_19->sadrzaj?></p>
            </div>
            <table>
                <tr><th>BR</th><th>VRSTA RADOVA</th><th>MERA</th><th>CENA</th></tr>
                <?php
                $conn = Connection::getConnection();
                $res = $conn->query("SELECT * FROM cenovnik");
                foreach ($res->fetchAll() as $rw) { ?>
                  <tr>
                    <td><?=$rw['id']?></td>
                    <td><?=$rw['vrsta_radova']?></td>
                    <td><?=$rw['mera']?></td>
                    <td><?=$rw['cena']?></td>
                  </tr>
                <?php } ?>
            </table>
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
