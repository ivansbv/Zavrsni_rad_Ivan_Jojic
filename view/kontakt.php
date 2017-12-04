<?php
$article_20 = Article::get(20);
$article_21 = Article::get(21);
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
            	<h2><?=$article_20->naslov?></h2>
                 <p><?=$article_20->sadrzaj?></p>
             </div>
             <form method="post" action="send.php">
                <fieldset>
                    <legend>Kontakt</legend><br>
                    <div id="podaci">
                        <label>Ime:<br>
                          <input type="text" name="name">
                        </label><br><br>
                        <label>E-mail:<br>
                          <input type="text" name="email">*
                        </label><br><br>
                    </div>
                    <div id="poruka">
                        <label>Pošalji poruku:<br>
                            <textarea name="poruka" rows="8" cols="40"></textarea>
                        </label><br><br>
                        <input type="submit" name="send" id="button" value="Pošalji">
                    </div>
                </fieldset>
             </form>
             <div id="adresa">
                 <h4>IVI-SISTEM:</h4>
                 <p>Sremačka 3/a, Vrčin, Beograd<br>
                 Tel: 064/183-50-36<br>
                 Email: <a href="mailto:ivan.jojic81@gmail.com">ivan.jojic81@gmail.com</a><br>
                 Net: <a href="POCETNA">www.ivi-sistem.rs</a> </p>
             </div>
             <div id="location">
                <h3><?=$article_21->naslov?></h3>
                <iframe src="<?=$article_21->slika?>" width="900" height="600" frameborder="0" style="border:0" allowfullscreen></iframe>
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
