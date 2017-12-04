-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 04, 2017 at 06:33 PM
-- Server version: 5.7.20-0ubuntu0.16.04.1
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ivi-sistem`
--

-- --------------------------------------------------------

--
-- Table structure for table `cenovnik`
--

CREATE TABLE `cenovnik` (
  `id` int(11) NOT NULL,
  `vrsta_radova` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `mera` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `cena` varchar(512) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cenovnik`
--

INSERT INTO `cenovnik` (`id`, `vrsta_radova`, `mera`, `cena`) VALUES
(1, 'Lepljenje ploča na zidove - suvo malterisanje', 'm2', '7 eur'),
(2, 'Termo i zvučno izolaciono oblaganje zidova sa metalnom potkonstrukcijom', 'm2', '13 eur'),
(3, 'Oblaganje plafona sa potkonstrukcijom', 'm2', '12 eur'),
(4, 'Oblaganje potkrovlja sa potkonstrukcijom', 'm2', '16 eur'),
(5, 'Spušteni plafoni sa potkonstrukcijom u dva pravca', 'm2', '16 eur'),
(6, 'Vlagootporni spušteni plafoni sa metalnom potkonstrukcijom', 'm2', '13 eur'),
(7, 'Spušteni lučni plafoni sa metalnom potkonstrukcijom', 'm2', '25 eur'),
(8, 'Spušteni armstrong plafoni  60x60  sa metalnom potkonstrukcijom', 'm2', '12 eur'),
(9, 'Pregradni zidovi 50/75 sa metalnom potkonsrtukcijom', 'm2', '19 eur'),
(10, 'Pregradni zidovi 50/100 sa metalnom potkonstrukcijom', 'm2', '24 eur'),
(11, 'Pregradni zakrivljeni zidovi sa metalom potkonstrukcijom', 'm2', '35 eur'),
(12, 'Spušteni plafoni otporni na požar sa metalnom potkonstukcijom', 'm2', '16 eur'),
(13, 'Pregradni zidovi otporni na požar 75/100 sa metalnom potkonstrukcijom', 'm2', '21 eur'),
(14, 'Instalacioni vlagootporni pregradni zid 75/125 dvoslojno obložen', 'm2', '30 eur'),
(15, 'Rušenje starih pločica, skidanje stare instalacije, demontaža i iznošenje', 'kom', '200 eur'),
(16, 'Izrada cementne košuljice do 5sm sa toplotnom izolacijom', 'm2', '14 eur'),
(17, 'Izrada hidroizolacije', 'm2', '20 eur'),
(18, 'Postavljanje vodovodne instalacije', 'kom', '300 eur'),
(19, 'Postavljanje zidne i podne keramike', 'm2', '14 eur'),
(20, 'Montaza sanitarija', 'kom', '140 eur'),
(21, 'Struganje poroznih površina i tapeta', 'm2', '2 eur'),
(22, 'Farbanje zidova poludisperzionom bojom', 'm2', '2 eur'),
(23, 'Gletovanje zidova i farbanje poludisperzionom bojom', 'm2', '4 eur'),
(24, 'Farbanje akrilnom bojom', 'm2', '2 eur'),
(25, 'Gletovanje zidova ( x3 ) i farbanje akrilnom bojom', 'm2', '6 eur'),
(26, 'Postavljanje tapeta', 'm2', '5 eur'),
(27, 'Farbanje stolarije po otvoru', 'kom', '50 eur'),
(28, 'Farbanje TA peći', 'kom', '70 eur'),
(29, 'Izrada Demit fasade', 'm2', '12 eur'),
(30, 'Zidanje spoljnih zidova sa ciglom', 'm3', '40 eur'),
(31, 'Zidanje pregradnih zidova sa ciglom', 'm2', '14 eur'),
(32, 'Zatvaranje pukotina,neravnina na zidovima', 'm2', '2 eur'),
(33, 'Ugradnja klizajućih vrata', 'kom', '15 eur'),
(34, 'Ugradnja standardnih vrata', 'kom', '13 eur'),
(35, 'Ugradnja prozora', 'kom', '12 eur'),
(36, 'Montaža parketa laminata', 'm2', '2 eur'),
(37, 'Montaža brodskog poda', 'm2', '2 eur'),
(38, 'Ugradnja elektro automata', 'kom', '3 eur'),
(39, 'Ugradnja elektro ormara', 'kom', '10 eur'),
(40, 'Montaža elektro kabla u betonski zid', 'm', '1 eur'),
(41, 'Montaža elektro kabla u zid od cigle', 'm', '0.5 eur'),
(42, 'Montaža elektro kabla u gipsokarton', 'm', '0.5 eur');

-- --------------------------------------------------------

--
-- Table structure for table `clanci`
--

CREATE TABLE `clanci` (
  `id` int(11) NOT NULL,
  `naslov` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `sadrzaj` text COLLATE utf8_unicode_ci NOT NULL,
  `slika` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  `strana_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `clanci`
--

INSERT INTO `clanci` (`id`, `naslov`, `sadrzaj`, `slika`, `strana_id`) VALUES
(1, 'Adaptacija i renoviranje', 'Opremanje enterijera, kao i adaptacija i renoviranje stanova i poslovnog prostora, su oblast građevinske industrije koja se neprekidno razvija. Savremeni tokovi diktiraju sam stil i izgled finalnog proizvoda, odnosno kompletnog enterijera, a mi u kompaniji IVI-SISTEM pratimo najnovije trendove i činimo sve da  izađemo u susret željama klijenata poštujući standarde kvaliteta. Bilo da se radi o adaptaciji stana, kuće ili poslovnog prostora, tu smo da zajedno sa vama pronađemo najbolje rešenje koje će vas zadovoljiti.U slučaju da je potrebno uraditi neke od osnovnih radnji na polju uređenja i adaptacije stana i poslovnog prostora ili je potrebno izvršiti kompletno renoviranje i opremanje enterijera po sistemu ključ u ruke, garantujemo da će svi radovi biti izvedeni kvalitetno, sistematično i profesionalno.</p>\r\n            	<p>Pružamo kompletne usluge u našim oblastima.Molersko-farbarski radovi, gipsarski radovi, spušteni plafoni, lukovi, rasveta, elektroinstalacije, kupatila, vodovod, keramika, stiropor i stirodur fasade. Tehničko održavanje (sve vrste popravki) i čišćenje stanova, zgrada i poslovnog prostora, adaptacija i renoviranje stana je samo mali deo usluga koji naša firma pruža.Malo je ljudi koji živi u sređenom stambenom prostoru dok je daleko mnogo više onih koji su ispunjeni nedostacima. Možemo vam pomoći našim savetima da ulepšate i date život vašem prostoru tako što ćemo najkvalitetnije i najbrže rešiti vaš problem adaptacijom sobe, stana, lokala ili poslovnog prostora. Naše adaptacije se nalaze u samom vrhu u Srbiji po kvalitetu i brzini izvođenja. O adaptaciji govore niz zadovoljnih klijenata i firmi u rubrici Reference. Za sva pitanja u vezi adaptacija ili saveta u vezi renoviranja mozete nas pitati direktno u rubrici Kontakt.', '', 1),
(2, 'Adaptacija poslovnog prostora', 'Kancelarija je zapravo vaša druga kuća. To je mesto gde se borite za nove poslovne prilike, kreirate i ostvarujete svoje profesionalne ambicije. Radni prostor takođe ima veliki udeo u identitetu firme, funkcionisanju tima i u tome kako će ga doživeti vaši klijenti.Jedan od uslova dobre prodaje je i atraktivan poslovni prostor, bilo da se radi o prodajnoj ili uslužnoj delatnosti. Estetika, funkcionalnost i pozitivna energija prostora sigurno će doprineti da se Vaši klijenti osećaju prijatno i opušteno u Vašem prostoru i da svoje poverenje i novac poklone upravo Vama.Kvalitetna adaptacija poslovnog prostora (kancelarije, lokala, firme) podrazumeva da počnete sa dobrim projektom adaptacije enterijera i eksterijera i arhitektom od poverenja, koji će za Vas voditi sve poslove adaptacije.', 'images/slikatext/poslovniprostor.jpg', 1),
(3, 'Adaptacija stana', 'Renoviranje stana je idealna prilika da osvežite svoj dom i unesete neke novine.Ponekad renoviranje samo određene prostorije može osvežiti i ulepšati vaš dom. A nekada je dovoljna i minimalna zamena nekog dela, kojom ćete učiniti stan prostornijim i lepšim mestom.Pre nego što se odlučite za renoviranje i bilo koju promenu, napravite plan sa željenim izmenama. Razmislite šta tačno želite da promenite, dodate, spojite ili sklonite. Da li ćete menjati zidove ili postaviti novi parket? Obratite se profesionalnoj firmi koja iza sebe ima iskustvo i koja vas može posavetovati ukoliko imate neke nedoumice.Prostorije koje se najčešće renoviraju i menjaju jesu kuhinja, kupatilo, dnevna soba i spavaća soba. Posebnu pažnju zahteva i zamena vodovodne i elektro instalacije. Kada menjate kompletan enterijer stana, vodite računa da odaberete adekvatne boje zidova za svaku prostoriju i pogodnu rasvetu. Iako na prvi pogled sve deluje jako komplikovano, uz savete iskustvene firme, renoviranje stana ne mora više biti stresno i dugo, već brzo i jednostavno.', 'images/slikatext/stan.jpg', 1),
(4, 'Uređenje dvorišta', 'Osim cveća, trave, žbunja i drveća, u lepom dvorištu treba da se posveti pažnja uređenju staza, rasveti, mestu za sedenje i sitnim ukrasima. Boje u vaše dvorište najlakše ćete uneti sadnjom više vrsta cveća. Ništa ne poboljšava izgled dvorišta kao lepo i negovano cveće.Svaki detalj u dvorištu je zapravo i dekorativan. Bilo da se radi o saksijama, izboru kamena kojim ćete urediti staze, klupama, lampama, kućicama za ptice, možete pustiti mašti na volju i poigrati se svime što vam dođe pod ruku. Cveće i druge biljke izložite na neuobičajen način, iskoristite stare kante za vodu, drvenu burad ili stari bickl. Klupe na kojima ćete sediti u hladovini mogu biti neobične, drvene, metalne, kombinovane od kamena ili betona sa sedištima od jastuka i sl. Diskretne lampe sa solarnim punjenjem su veoma efektne i prijaju u vreme zalaska sunca pa ih možete rasporediti po bašti među cvećem. U zelenilo možete ubaciti krupno kamenje, ukrasne gljive i slično. One će dodati boju ili napraviti kontrast između boja i materijala koje se tu prepliću.', 'images/slikatext/dvoriste.jpg', 1),
(5, 'IVI-SISTEM', 'IVI-SISTEM posluje već duži niz godina, usavršavajući se u skladu sa savremenim načinom življenja i potrebom da se kvalitetno, funkcionalno i estetski odgovori zahtevima kupaca. Osnivači i vlasnici firme su Vida Stanisić i Ivan Jojić.<br>\r\n            	Firma IVI-SISTEM je osnovana 01.09.2010 godine u Beogradu i od tada zahvaljujući kvalitetu i upornom angažovanju stručnjaka u svim oblastima adaptacija i renoviranja poslovnih, stambenih prostora postiže izuzetne rezultate o kome govori sekcija reference gde je samo mali broj veoma velikih firmi sa kojima sarađujemo.<br>\r\n                Početek rada ove firme bio je sa malim brojem ljudi. Iz godine u godinu ova firma je znatno napredovala tako da je izrasla u moćnu radnu organizaciju sposobna da samostalno kvalitetno i na vreme obavi i najsloženije građevinske zahvate. Zapošljavaju se vrhunski majstori, koji svojom stručnošću odrade svaki posao na najbolji mogući način. Sva prethodno stečena znanja i iskustva kroz rad na značajnim objektima i poslovima uneta su kao značajan kapital i tokom godina prenošena na mlađe kadrove. Proteklih godina prošli smo kroz mnoge poteškoće poslujući u teškoj ekonomskoj situaciji u našoj zemlji, da bi smo iz toga izašli još jači, i u povoljnijim ekonomskim uslovima u potpunosti pokazali svoje potencijale i na tržištu zauzeli mesto koje nam pripada. Visoka stručnost operative, zajedno sa menadžmentom preduzeća, omogućili su kvalitetno izvođenje radova u svim uslovima, a prema standardima i zahtevima investitora. Zahvaljujući tome IVI-SISTEM postaje prepoznatljiv brend, a stečeni renome bazira na bogatoj referenc listi izvedenih objekata.<br>\r\n                Verujući u svoje ljude, ni u ovim teškim vremenima nećemo posustati u poslovima koji su pred nama.', 'images/slikatext/mismo.jpg', 2),
(6, 'Verujemo u nešto starije od nas', 'Svesni smo da od kada postoje ljudi, postoji i njihova potreba prvo za traženjem, a onda i izgradnjom skloništa. Tradicija graditeljstva stara je skoro koliko i ljudski rod. U starijem kamenom dobu, kada su se bavili lovom i skupljanjem prirodnih plodova, ljudi su zaklon tražili u prirodnim šupljinama i pećinama.Prvi objekti za stanovanje, koje su ljudi gradili,  bile su zemunice. Zemunice su rupe u zemlji prekrivene šibljem. Kasnije, kako se povećavalo iskustvo i znanje, ljudi su počeli da podižu svoje kuće nad zemljom.U predelima bogatim šumama gradili su kolibe i brvnare.Na močvarnom zemljištu ljudi su podizali drvene  sojenice.Na nepristupačnim i kamenitim brdima ljudi su  gradili kuće od kamena.Usavršavanjem alata od drveta i kamena, kasnije i gvožđa, ljudi počinju da grade čvrste i trajne građevine.<br>\r\n                Na tlu sa kojeg poticemo, tradicija čuvenih neimara ostavlja nam u zaveštanje svoju veštinu i posvecenost, a nas obavezuje da sa istim žarom izvodimo svoje građevinske poduhvate. U godinama koje su za nama, razvili smo svoje kapacitete tako da smo tehnicki, kadrovski i organizaciono sposobni za izvodenje svih radova u gradevinarstvu, od grubih do zavrsnih. Od prapočetaka do danas, ljudski rod ne prestaje da gradi, a naši moderni domovi i građevine savremenog sveta su i dalje naša sklonista, naše privatne oaze, prostori slobode i zadovoljstva. ', 'images/slikatext/staragradnja.jpg', 2),
(7, 'Usluge', 'Najpristupačnije cene adaptacija stanova i poslovnog prostora.\r\n                Kvalitet i brzina izvođenja radova renoviranja stanova i objekata.\r\n                Visok stepen stručnosti za sve vrste adaptacija stana i renoviranja.\r\n                Planiranje životnog prostora ili adaptacija postojećeg.<br>\r\n            	Bavimo se poslom adaptacije stanova i životnog i poslovnog prostora već duži niz godina, usavršavajući se u skladu sa savremenim načinom života i prihvatanjem najnovijih tehnika i alata potrebnih da se maksimalno kvalitetno, funkcionalno i estetski odgovori zahtevima naših klijenata.', '', 3),
(8, 'Prostorno planiranje', 'Prilikom adaptacije imamo tačno određen raspored obavljanja poslova. Tako radeći ostvarujemo najbolje rezultate.\r\n                Prva faza adaptacije je svakako prostorno planiranje. Poštujući Vaše želje svaki kutak Vašeg doma ćemo učiniti prijatnim i funkcionalnim. Izradićemo precizan plan prostora. Ukoliko je potrebno, možemo ukloniti suvišne zidove ili zidati nove. Radimo i zamenu elektroinstalacija, vodovodnih instalacija, stolarije, podnih obloga…\r\n                Trudimo se da Vaš dom bude mesto u kom se najbolje osećate. Ako budete angažovali nas, budite sigurni da ćemo isplanirati svaki pa i najmanji detalj u Vašem domu. Nećete se više saplitati o kablove, imaćete dovoljno utičnica na svim mestima u domu, u zavisnosti od namene prostorije predložićemo Vam boju u koju ćete je okrečiti, uradićemo zajedno plan rasporeda sanitarija, a po Vašoj želji možemo Vam pomoći i u izboru nameštaja.', 'images/slikatext/planiranje.jpg', 3),
(9, 'Suva gradnja', 'Rigips pregradni zidovi imaju iste, ako ne i bolje zvučne, toplotne i protivpožarne osobine kao i zidovi od cigle ili blokova.  Prednost Rigips zidova je u tome što se lako postavljaju,održavaju, lakši su i lako se demontiraju.  Šupljina zida se može iskoristiti za sprovođenje svih instalacija.\r\n                Gipsanim pločama se rade i spušteni plafoni. U prostor između ploča i plafona lako se mogu namontirati sistemi provetravanja i klimatizacije, a dodavanjem rasvete se mogu zadovoljiti visoki estetski zahtevi.', 'images/slikatext/gips.jpg', 3),
(10, 'Molerski radovi', 'Za molerske radove angažujemo stručnjake koji obavljaju krečenje svim vrstama boja- poludisperzivnim, perivim, akrilnim i bojama za specijalne namene.Garantujemo Vam kvalitetan i precizan rad naših molera. Nakon obavljenog posla oni očiste celokupan prostor, a zatim još jednom dolaze i popravljaju oštećenja koja mogu nastati pri unošenju nameštaja.', 'images/slikatext/molerski.jpg', 3),
(11, 'Keramičarski radovi', 'Keramički radovi daju konačan izgled adaptiranom objektu, unose toplinu u Vaš dom, a pravim izborom keramike možete uticati na vizuelno povećanje nekih prostorija. Takođe doprinose i jednostavnijem održavanju doma.Pločice najčešće postavljamo u kuhinji, kupatilu, hodniku, na terasi ili na nekim drugim površinama koje želimo ukrasiti ili pojednostaviti njihovo održavanje.Spoljne pločice treba da su otporne na smrzavanje ali i da se ne klizaju. Unutrašnje pločice su neprekidan izvor ideja. Dobrim izborom i postavljanjem mogu biti izuzetan ukras u Vašem domu. Preporučujemo Vam da kupite dodatnu kutiju pločica, kako biste mogli da sanirate neku nepredviđenu štetu (na primer pri zameni vodovodnih instalacija). O izboru pločica odlučijete Vi, a mi ćemo Vam dati neke korisne savete. Lepak i fugomal biramo sami koristeći predhodna iskustva.Preduslov za uspešno postavljanje pločica je potpuno ravna podloga. Ukoliko postoje neravnine, naši majstori ih potpuno uklanjaju. Kod postavljanja pločica pazimo na uklapanje. Posle nanošenja fuga, sastavne delove zatvaramo silikonom.', 'images/slikatext/keramika.jpg', 3),
(12, 'Elektroinstalacije', 'Bilo da gradimo nov objekat ili renoviramo postojeći, mi posebnu pažnju posvećujemo elektroinstalacijama.Ukoliko renovirate objekat staru elektroinstalaciju je potrebno zameniti na početku renoviranja jer stare žice mogu lako dovesti do požara. Pre postavljanja  treba odrediti mesto kućnih aparata i elektro uređaja. Dakle, važno je da znate raspored nameštaja u stanu da bi prekidači i utičnice bili na mestima gde su najpotrebniji. Sve poslove vezane za elektroinstalacije, pa čak i one koji vam se čine sitnim, prepustite stručnjacima.Dizajn utičnica i prekidača se u poslednje vreme veoma poboljšao i izbor je daleko veći. U skladu sa celokupnim izgledom Vašeg doma, možete izabrati i odgovarajuće boje i materijale – od belih plastišnih do aluminijumskih i bakarnih prekidača i utičnica.', 'images/slikatext/elektro.jpg', 3),
(13, 'Vodovodna instalacija', 'Vodovodna instalacija u kuhinji može biti podjednako zahtevna kao i u kupatilu. Pre početka radova treba smisliti razmeštaj sanitarija i kupatilskog nameštaja kao i kuhinjskih elemenata. Potrebno je maksimalno iskoristiti prostor i napraviti ga što funkcionalnijim.Nekada su najviše upotrebljavane pocinkovane cevi, ali ih danas menjamo zbog korozije i vlage. Danas najčešće koristimo pvc ili vargon cevi. Sem plastičnih ugrađujemo i pocinkovane i bakarne cevi u skladu sa Vašim izborom. Prilikom kupovine materijala često se desi da su cene za isti proizvod neujednačene. Mi smo tu da Vam ukažemo gde u maloprodaji možete najpovoljnije da kupite potreban materijal, a možemo i mi obaviti kupovinu za Vas.', 'images/slikatext/vodovod.jpg', 3),
(14, 'Referencna lista', 'Firma IVI-SISTEM je do sada uspešno izvela mnogobrojne obimne adaptacije i zahtevne rekonstrukcije. Takođe uspešno je izvela opremanje i primopredaju samih objekata.Predstavljamo Vam samo neke od njih.', '', 4),
(15, 'Lisca', 'Preduzeće za modnu odeću Lisca doo, bavi se proizvodnjom i prodajom ženskog donjeg rublja. U sastavu prodajnog prostora poseduje dvadeset lokala u Srbiji.<br>\r\n                Postoje dva brenda koji funkcionišu u okviru kompanije. Robna marka Lisca je sinonim za moderan i savršen dizajn, proverene linije i prihvatljive cene. To je moderan i ženstven brend donjeg veša, kupaćih kostima, spavaćeg programa i bluza. Robna marka Cheek by Lisca dizajnirana je za mlađu žensku populaciju koja prati modne trendove i traži multifunkcionalni donji veš sa karakteristikama gornje odeće. Razigrani i smeli modeli su namenjeni prevashodno onima koji žele da budu atraktivni i imaju donji veš po poslednjoj modi.Savremeni materijali daju savršen izgled i zadovoljstvo uz prihvatljivu cenu.', 'images/slikatext/lisca_referenca.jpg', 4),
(16, 'JVP Beogradvode', 'Preduzeće je osnovala Vlada Republike Srbije 1952. spajanjem dve vodne zajednice radi odbrane beogradskog područja od štetnog dejstva voda. Odlukom Skupštine grada Beograda od 29. februara 2008. organizovano je kao Javno vodoprivredno preduzeće „Beogradvode”, čiji je osnivač Grad Beograd.<br>\r\n                Preduzeće održava i stara se o izgrađenim i neizgrađenim obalama reke Save i Dunava, osim dela operativne obale Luke na desnoj obali Dunava, održava i stara se o Bežanijskom zimovniku, Savskom pristaništu sa svim zgradama i drugim građevinskim objektima koji se nalaze na prostoru Bežanijskog zimovnika i teretnog Savskog pristaništa, osim pristanišnih postrojenja i uređaja na Savskom pristaništu.<br>\r\n                U funkciji obavljanja osnovne delatnosti preduzeće obavlja i delatnosti izgradnje hidrotehničkih objekata, uklanjanje otpadnih voda,  inženjerske delatnosti i tehničko savetovanje, eksploatacija građevinskog i ukrasnog kamena, prevoz putnika unutrašnjim plovnim putevima i izgradnju cevovoda.', 'images/slikatext/bgvode_referenca.jpg', 4),
(17, 'NPS 18 - Ruska Federacija - Jakutska oblast', 'NPS 18 je bazna stanica, u istočnom Sibiru, za transport nafte u okviru Transnjeft korporacije. Transnjeft je Ruski operater magistralnih naftovoda. On je najveća svetska naftna kompanija, poseduje 48,7 hiljada kilometara magistralnih cevovoda, više od 500 pumpnih stanica.<br>\r\n                U sklopu NPS 18 nalazi se postrojenje(pumpa) za ubrzani transport nafte, rezervoari za skladištenje nafte, toplana za grejanje objekata, trafo stanica sa dalekovodima za prenos električne energije, garaža za mehanizaciju, objekat vodovoda, kanalizacioni sistem, hotel za smeštaj zaposlenih kao i mnogi drugi prateći objekti.', 'images/slikatext/nps_referenca.jpg', 4),
(18, 'Mađarski kulturni centar', 'Hungarikum Centar je mesto gde ćete pronaći sve informacije o Republici Mađarskoj. Kroz niz programa tokom čitave godine predstavićemo Vam mađarsku kulturu i umetnost.<br>\r\n                Hungarikum Centar se bavi promocijom mađarske gastronomije, promocijom vinske kulture, promocijom Mađarske kao turističke destinacije, promocijom ekonomskog dijaloga između Republike Mađarske i Republike Srbije.<br>\r\n                U sklopu Hungarikum Centra nalazi se i specijalizovana radnja za mađarske proizvode. Hungarikum Centar Shop sa sloganom “ Delikatesno iz Mađarske” je prodavnica mađarskih prehrambenih proizvoda i vina, gde ćete imati mogućnost da ovde, u srcu Beograda kupite svoje omiljene mađarske proizvode.', 'images/slikatext/mkc_referenca.jpg', 4),
(19, 'Cenovnik radova', 'U priloženom cenovniku se nalazi samo deo asortimana raspoloživih usluga sa kratkim opisom. Cene koje su date mogu se smatrati samo informativnim, zbog velike oscilacije zahteva i potreba klijenata, nivoa detaljnosti  i kompleksnosti objekta. Konačnu ponudu možete dobiti samo nakon izlaska našeg stručnog lica na teren. Ukoliko imate učestale potrebe za izvođenjem molerskih, gipsarskih ili dekorativnih radova, obaveštavamo Vas da za stalne klijente imamo poseban popust na sve usluge.<br>\r\n              Pozovite nas ili nam pošaljite na e-mail Vaš zahtev za izvođenje potrebnih radova i mi ćemo Vam u kratkom roku dati okvirnu ponudu koja sadrži cenu rada i potrebnog materijala, kao i rokove potrebne za završetak radova. Upoznavanje sa projektom (ukoliko postoji), definisanje svih aspekata vezano za radove koje želite da se izvedu.Početak izvođenja radova, učestalost narednih konsultacija najviše zavise od kompleksnosti  potrebnih radova.Nakon završetka radova vršimo primopredaju prostora.', 'images/slikatext/money.jpg', 5),
(20, 'Kontakt', 'Kako bi nas kontaktirali popunite formular ispod. Mi ćemo odgovoriti u najkraćem mogućem roku.<br>\r\n                 Molimo Vas da popunite pravilno sve informacije , tako da možemo da vas kontaktiramo.', '', 6),
(21, 'Lokacija', '', 'https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d1309.4118265092018!2d20.585096163821127!3d44.665868241107354!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e6!4m5!1s0x47509e32cf265e07%3A0x397e9436bbb49011!2zU3JlbWHEjWthLCBWcsSNaW4!3m2!1d44.6653388!2d20.585460599999998!4m5!1s0x47509e32cf265e07%3A0x397e9436bbb49011!2zU3JlbWHEjWthLCBWcsSNaW4!3m2!1d44.6653388!2d20.585460599999998!5e1!3m2!1ssr!2srs!4v1455117704630', 6);

-- --------------------------------------------------------

--
-- Table structure for table `reklame`
--

CREATE TABLE `reklame` (
  `id` int(11) NOT NULL,
  `naziv` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `slika` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `opis` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reklame`
--

INSERT INTO `reklame` (`id`, `naziv`, `slika`, `link`, `opis`) VALUES
(1, 'knauf', 'images/logo/knauf.jpg', 'http://www.knauf.rs/', 'Reklama Knauf, plaćeno do 01.01.2017.'),
(2, 'rigips', 'images/logo/rigips.jpg', 'http://www.rigips.rs/', 'plaćeno do 01.07.2017.'),
(3, 'kanjiza', 'images/logo/kanjiza.jpg', 'http://www.keramikakanjiza.com/', 'Daju nam 10% povoljnije neke proizvode'),
(4, 'zorka', 'images/logo/zorka.jpg', 'http://www.zorka-keramika.rs/', 'regulisano'),
(5, 'vitex', 'images/logo/vitex.jpg', 'http://www.vitex.gr/en/', 'dobre boje al stipse'),
(6, 'jub', 'images/logo/jub.jpg', 'http://www.jub.rs/', 'slovenci ko slovenci'),
(7, 'ceresit', 'images/logo/ceresit.jpg', 'http://ceresit.co.rs/', 'dali pare za mesec septembar'),
(8, 'sika', 'images/logo/sika.jpg', 'http://srb.sika.com/', 'dali silikone za džabe');

-- --------------------------------------------------------

--
-- Table structure for table `strane`
--

CREATE TABLE `strane` (
  `id` int(11) NOT NULL,
  `name` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `opis` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `strane`
--

INSERT INTO `strane` (`id`, `name`, `link`, `opis`) VALUES
(1, 'pocetna', '?strana=1', 'početna strana'),
(2, 'onama', '?strana=2', 'strana o nama'),
(3, 'usluge', '?strana=3', 'čime se bavimo'),
(4, 'reference', '?strana=4', 'šta smo uradili'),
(5, 'cenovnik', '?strana=5', 'trenutne cene'),
(6, 'kontakt', '?strana=6', 'strana za kontakt');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cenovnik`
--
ALTER TABLE `cenovnik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clanci`
--
ALTER TABLE `clanci`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strana_id` (`strana_id`);

--
-- Indexes for table `reklame`
--
ALTER TABLE `reklame`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strane`
--
ALTER TABLE `strane`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cenovnik`
--
ALTER TABLE `cenovnik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `clanci`
--
ALTER TABLE `clanci`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `reklame`
--
ALTER TABLE `reklame`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `strane`
--
ALTER TABLE `strane`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
