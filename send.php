
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
        <div id="main_ostalo">
        	<?php
                $name = $_POST['name'];
                $email = $_POST['email'];
                $post = $_POST['poruka'];
                $send = $_POST['send'];

                $to = "ivan.jojic81@gmail.com";
                $subject = "Poruka sa mog sajta";

                $message = "<b>Ime:</b> " . $name . "\r\n";
                $message .= "<b>Email:</b> " . $email . "\r\n";
                $message .= "<b>Poruka:</b> " . $post;

                if (isset($send) ) {
                    if (empty($email)) {
                        echo "<h2>Greška, polje za Email je obavezno!</h2><form action='KONTAKT'><input type='submit' value='Pokušajte ponovo'></form>";
                    }else if(!filter_var($email,FILTER_VALIDATE_EMAIL)){
                        echo "<h2>Email adresa Vam je neipravna!</h2><form action='KONTAKT'><input type='submit' value='Pokušajte ponovo'></form>";
                    }else{
                        echo "<h1>Vaša poruka je poslana</h1><p>Zahvaljujemo na poslanoj poruci! Kontaktirati ćemo Vas u najkraćem mogućem roku.</p>"; 
                        //mail($to, $subject, $message); 
                        echo $message;  
                    }
                }
            ?>
    	</div><!--end main-->
        <div id="footer">
        <p>Copyright © 2016 ivi-sistem.rs</p> 
    	</div><!--end footer-->
    </div>
</body>
</html>


