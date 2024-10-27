-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Paź 26, 2024 at 04:28 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `książki`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ksiazki`
--

CREATE TABLE `ksiazki` (
  `ID` int(11) NOT NULL,
  `Tytul` varchar(60) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `Wydawnictwo` varchar(30) CHARACTER SET utf8 COLLATE utf8_polish_ci DEFAULT NULL,
  `Autor` varchar(30) CHARACTER SET utf8 COLLATE utf8_polish_ci DEFAULT NULL,
  `Gatunek` varchar(30) CHARACTER SET utf8 COLLATE utf8_polish_ci DEFAULT NULL,
  `Opis` text CHARACTER SET utf8 COLLATE utf8_polish_ci DEFAULT NULL,
  `Rok_wydania` int(11) NOT NULL,
  `Zdjecie` varchar(30) CHARACTER SET utf8 COLLATE utf8_polish_ci DEFAULT NULL,
  `Cena` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ksiazki`
--

INSERT INTO `ksiazki` (`ID`, `Tytul`, `Wydawnictwo`, `Autor`, `Gatunek`, `Opis`, `Rok_wydania`, `Zdjecie`, `Cena`) VALUES
(1, 'Harry Potter i Kamień Fizoloficzny', 'Media Rodzina', 'Rowling J.K.', 'Fantasy', 'A co, jeśli świat magii i czarów istnieje naprawdę? Jest tuż obok nas? Wkrocz wraz z młodym czarodziejem, Harrym Potterem, do niezwykłej, alternatywnej rzeczywistości, gdzie wszystko jest możliwe. Zanurz się w lekturę pierwszego tomu cyklu pod tytułem „Harry Potter i Kamień Filozoficzny” autorstwa J. K. Rowling.\n\nPierwsze spotkanie z małym czarodziejem\n\nKsiążka „Harry Potter i Kamień Filozoficzny” rozpoczyna cykl o młodym czarodzieju i jego licznych przygodach. Tytułowy Harry Potter wychowywany jest przez nieprzychylnych mu ciotkę i wuja. Jego rodzice zginęli w tajemniczych okolicznościach, a jedyne, co mu po nich pozostało to blizna na czole w kształcie błyskawicy. W dniu swoich 11. urodzin bohater dowiaduje się, że istnieje świat, o którym nie miał pojęcia.\n\nPodróż do Hogwartu\n\nZainteresowała Cię opowieść o wyjątkowym chłopcu? Dzięki książce J.K. Rowling możesz wyruszyć w magiczną podróż i przenieść się do szkoły dla czarodziejów – do Hogwartu. Co czeka w nim Harry’ego Pottera? Czy odkryje, co stało się z jego mamą i tatą?\n\n„Harry Potter i Kamień Filozoficzny” jest książką otwierającą wielotomowy cykl o czarodzieju, który w towarzystwie czytelników dorasta i przeżywa coraz to nowe, niebezpieczne przygody, walcząc ze swoim wrogiem – Voldemortem. To powieść nie tylko dla młodych czytelników. Dorośli również z pewnością będą czerpali przyjemność z jej lektury.', 1997, 'Książki/Harry1.png', 33.49),
(2, 'Harry Potter i komnata Tajemnic', 'Media Rodzina', 'Rowling J.K.', 'Fantasy', 'Czy czytałeś już pierwszy tom przygód Harry`go Pottera? Poznałeś młodego czarodzieja, który nagle odkrywa, że magia jest integralną częścią jego świata? Możesz wrócić do Hogwartu, rozpocząć nowy rok nauki wraz z Harrym i jego przyjaciółmi – Hermioną i Ronem. Sięgnij po drugi tom sagi o małym czarodzieju – Harry Potter i Komnata Tajemnic.\r\n\r\nKomnata tajemnic znów została otwarta\r\n\r\nSłowa te prędzej czy później pojawiają się na kartach powieści J.K. Rowling. Zanim jednak do tego dojdzie, Harry ponownie pojedzie do Hogwartu, co wydarzy się w ciekawych okolicznościach. Zobacz, co tym razem stanie na przeszkodzie, kiedy będzie chciał udać się na pociąg do szkoły magii i czarodziejstwa.\r\n\r\nZ pewnością i Tobie w związku z drugim tomem cyklu Harry`ego Pottera nasuwa się wiele pytań: Czym jest Komnata Tajemnic? Czym grozi jej ponowne otwarcie? Gdzie można ją znaleźć? Odpowiedzi – wraz ze sporą dawką emocji – znajdziesz w książce.\r\n\r\nPrzyjaciele walczący z odwiecznym wrogiem\r\n\r\nTym razem lepiej poznasz rodzinę Draco Malfoya. Zapoznasz się ze Zgredkiem i odkryjesz jeszcze więcej tajemnic związanych z Hogwartem i wydarzeniami z przeszłości. Przeżyj wraz z Harrym Potterem ekscytującą przygodę.', 1999, 'Książki/Harry2.png', 34.79),
(3, 'Harry Potter i więzień Azkabanu', 'Media Rodzina', 'Rowling J.K.', 'Fantasy', 'Znasz już Harry`ego Pottera, młodego czarodzieja, który przeżywa coraz to nowe przygody i stara się ratować świat przed Voldemortem, choć sam jeszcze poznaje arkana magii? Jeśli tak, to sięgnij po trzeci tom bestsellerowego cyklu napisanego przez J.K. Rowling! Książka ta sprawi, że przeniesiesz się do Hogwartu, szkoły czarodziejstwa. Wraz z Harrym, Hermioną i Ronem znajdziesz się w centrum wydarzeń.\r\n\r\nKim jest więzień Azkabanu?\r\n\r\nOsią trzeciej części cyklu książek o Harrym Potterze jest tytułowy więzień Azkabanu, który ucieka z pilnie strzeżonego więzienia dla czarodziejów. Wieść niesie, że to on zabił rodziców Harry`ego. Kim właściwie jest i co tak naprawdę łączy go z młodym czarodziejem? Dowiesz się, że nie wszystko jest takie, jak się wydaje, i nie każdy jest tym, za kogo mają go inni.\r\n\r\nNowi bohaterowie, nowe przygody\r\n\r\nW tej części przygód Harry`ego Pottera masz okazję poznać nowego nauczyciela obrony przed czarną magią. W nowej roli występuje też przemiły gajowy, Hagrid. Możesz poznać lepiej przeszłość tajemniczego profesora Snape`a. Udaj się wraz z Harrym, Hermioną i Ronem do Hogsmeade, czyli jedynej wioski w Anglii, gdzie mieszkają wyłącznie czarodzieje.\r\n\r\nCo czeka Harry`ego i czy przyjaciele będą w stanie mu pomóc w starciu z więźniem Azkabanu?', 2002, 'Książki/Harry3.png', 30.55),
(4, 'Harry Potter i Czara Ognia', 'Media Rodzina', 'Rowling J.K.', 'Fantasy', 'Czwarty tom cyklu w nowej okładce autorstwa Jonny’ego Duddle’a.\r\n\r\nW tym roku w Szkole Magii i Czarodziejstwa Hogwart rozegra się Turniej Trójmagiczny, na który przybędą uczniowie z Bułgarii i Francjii. Zgodnie z prastarymi regułami w turnieju uczestniczyć ma trzech uczniów – reprezentantów każdej ze szkół, wybranych przez Czarę Ognia. W tajemniczych i niewyjaśnionych okolicznościach wybranych zostaje czterech.\r\nCo z tego wyniknie dla Harry\'ego, jego przyjaciół i całego świata czarodziejów, dowiecie się z lektury czwartego tomu przygód nastoletniego czarodzieja.\r\n\r\nNowe wydanie książki o najsłynniejszym czarodzieju świata różni się od poprzednich nie tylko okładką, ale i wnętrzem – po raz pierwszy na początku każdego tomu pojawi się mapka Hogwartu i okolic, a początki rozdziałów ozdobione będą specjalnymi gwiazdkami.', 2004, 'Książki/Harry4.png', 49),
(5, 'Harry Potter i Zakon Feniksa', 'Media Rodzina', 'Rowling J.K.', 'Fantasy', 'Piąty tom bestsellerowej serii w nowej okładce autorstwa Jonny’ego Duddle’a.\r\n\r\nHarry znów spędza nudne, samotne wakacje w domu Dursleyów. Czeka go piąty rok nauki w Hogwarcie i chciałby jak najszybciej spotkać się ze swoimi najlepszymi przyjaciółmi, Ronem i Hermioną. Ci jednak wyraźnie go zaniedbują. Gdy Harry ma już dość wszystkiego i postanawia zmienić swoją nieznośną sytuację, sprawy przyjmują całkiem nieoczekiwany obrót.\r\nWygląda na to, że nowy rok nauki w Hogwarcie będzie bardzo dramatyczny. Po raz pierwszy w życiu Harry poczuje się tam nie jak w domu, tylko… więzieniu, i to nie za sprawą przywróconego do życia Lorda Voldemorta.\r\n\r\nNowe wydanie książki o najsłynniejszym czarodzieju świata różni się od poprzednich nie tylko okładką, ale i wnętrzem – po raz pierwszy na początku każdego tomu pojawi się mapka Hogwartu i okolic, a początki rozdziałów ozdobione będą specjalnymi gwiazdkami.', 2004, 'Książki/Harry5.png', 43.99),
(6, 'Harry Potter i Książę Półkrwi', 'Media Rodzina', 'Rowling J.K.', 'Fantasy', 'Szósty tom przygód nastoletniego czarodzieja w nowej okładce autorstwa Jonny’ego Duddle’a.\r\n\r\nPo nieudanej próbie przechwycenia przepowiedni Lord Voldemort jest gotów uczynić wszystko, by zawładnąć światem czarodziejów. Organizuje tajemny zamach na swego przeciwnika, a narzędziem w jego ręku staje się jeden z uczniów. Czy jego plan się powiedzie?\r\n\r\nSzósta część przygód Harry’ego Pottera przynosi cenne informacje o matce Voldemorta, jego dzieciństwie oraz początkach kariery młodego Toma Riddle’a, które rzucą nowe światło na sylwetkę głównego antagonisty Pottera.\r\n\r\nNa czym polega sekret nadprzyrodzonej mocy Czarnego Pana? Jaki jest cel tajemniczych i niebezpiecznych wypraw Dumbledore’a? I wreszcie, kto jest tytułowym Księciem Półkrwi i jaką misję ma on do spełnienia?\r\n\r\nNowe wydanie książki o najsłynniejszym czarodzieju świata różni się od poprzednich nie tylko okładką, ale i wnętrzem – po raz pierwszy na początku każdego tomu pojawi się mapka Hogwartu i okolic, a początki rozdziałów ozdobione będą specjalnymi gwiazdkami.', 2014, 'Książki/Harry6.png', 41.25),
(7, 'Harry Potter i Insygnia Śmierci', 'Media Rodzina', 'Rowling J.K.', 'Fantasy', 'Siódmy i ostatni tom bestsellerowego cyklu w nowej okładce autorstwa Jonny’ego Duddle’a.\r\n\r\nPo śmierci Dumbledore\'a Zakon Feniksa wzmaga swoją działalność, próbując przeciwstawić się coraz potężniejszym siłom śmierciożerców. Harry wraz z przyjaciółmi nie wraca do Hogwartu, tylko wyrusza z misją znalezienia sposobu na pokonanie Voldemorta. Wyprawa ta pełna niepewności i zwątpienia najeżona jest niebezpieczeństwami, a co gorsza nikt nie wie, czy zakończy się sukcesem i czy wszyscy dotrwają do jej końca.\r\n\r\nDlaczego Dumbledore nie pozostawił Harry`emu czytelnych wskazówek? Czy przeszłość nieżyjącego dyrektora kryje jakieś niezwykłe tajemnice? Jaką rolę odegra Snape przy boku Voldemorta? Czy Harry`emu uda się dotrzeć do najważniejszych miejsc i faktów dotyczących jego rodziny? Siódmy tom przyniesie odpowiedzi na wszystkie istotne dla potteromaniaków pytania.\r\n\r\nNowe wydanie książki o najsłynniejszym czarodzieju świata różni się od poprzednich nie tylko okładką, ale i wnętrzem – po raz pierwszy na początku każdego tomu pojawi się mapka Hogwartu i okolic, a początki rozdziałów ozdobione będą specjalnymi gwiazdkami.', 2015, 'Książki/Harry7.png', 49),
(8, 'Vicious. Nikczemni', 'We need YA', 'Schwab V.E.', 'Fantasy', 'Victoria Schwab, bestsellerowa autorka i zwyciężczyni Goodreads Choice Awards 2018 wraca z wyjątkową serią \"Złoczyńcy\"! Poznaj nowe oblicze autorki \"Okrutnej pieśni\", \"Mrocznego duetu\" i \"Odcieni magii\".\r\n\r\nŻycie – takie, jakim jest naprawdę – to walka nie między złym a dobrym,  lecz między złym, a jeszcze gorszym.\r\n\r\nVictor i Eli poznali się na studiach. Genialni, aroganccy i zdolni, od początku zauważyli w sobie tę samą wielką ambicję. W ciągu ostatniego roku zajęć wspólnie zainteresowali się badaniami nad adrenaliną, doświadczeniami bliskimi śmierci i pozornie nadprzyrodzonymi zdarzeniami, które ujawniły, że w odpowiednich warunkach można rozwinąć w sobie nadzwyczajne zdolności. Kiedy ich prosta teoria naukowa zamienia się w poważny eksperyment, sprawy zaczynają się komplikować…\r\n\r\nDziesięć lat później Victor ucieka z więzienia, a jego celem jest znalezienie byłego przyjaciela. W podróży towarzyszy mu znajomy z celi – Mitch, a na ich drodze staje Sydney – ranna dziewczyna, której powściągliwa natura skrywa niejedną tajemnicę.\r\n\r\nWrogowie uzbrojeni w straszliwą moc, napędzani wspomnieniem zdrady i straty, wyznaczyli kurs zemsty. Kto przeżyje pełne nienawiści starcie? Przed wami porywająca opowieść o ambicjach, zazdrości, pożądaniu i mrocznych, nadprzyrodzonych mocach!', 2019, 'Książki/Vicious.png', 28.74),
(9, 'Vengefull. Mściwi', 'We need YA', 'Schwab V.E.', 'Fantasy', 'Vengeful. Mściwi\r\n\r\nCzytelnicy będący miłośnikami superbohaterów i ich przygód ucieszą się z faktu, że pisarka Victoria E. Schwab postanowiła kontynuować swoją fantastyczną serię „Nikczemnych”. Jeśli taka tematyka jest Ci bliska, zapraszamy do przeczytania kolejnej książki z cyklu pod tytułem „Vengeful. Mściwi”.\r\n\r\nMarcella Riggins powraca\r\n\r\nKsiążka Victorii E. Schwab pod tytułem „Vengeful. Mściwi” to kontynuacja bestsellera z 2019 roku „Vicious. Nikczemni”. Jeśli nie miałeś jeszcze okazji się z nim zapoznać, nic nie stoi na przeszkodzie, żebyś nadrobił zaległości. Później będziesz mógł sięgnąć po kontynuację historii, w której Marcella Riggins, po tym, jak o mały włos nie umarła, pozbierała kawałki swojej duszy i znów stała się sobą – silną, niezależną kobietą. Powraca ona do pełni sił i zyskuje władzę, o której marzyła. Ma nadprzyrodzone moce, z pomocą których chce stać się najpotężniejszą kobietą na Ziemi.\r\n\r\nPrzeszkodą w realizacji takich planów są dwaj PonadPrzeciętni, czyli Eli Ever oraz Victoria Vale. Czy stawią czoła Marcelli Riggins? Czy miasto Merit ponownie spłynie krwią i kto zwycięży, jeśli rzeczywiście dojdzie do starcia dwóch różnych światów.\r\n\r\nSprawdź, jak Victoria E. Schwab przedstawia odwieczną walkę dobra ze złem? Które siły zwyciężą? Stań się częścią niezwykłych wydarzeń z mocami nadprzyrodzonymi w roli głównej.', 2020, 'Książki/Vengefull.png', 23.06),
(10, 'Czas Żniw. Tom 1', 'Wydawnictwo SQN', 'Shannon Samantha', 'Fantasy', 'Sajon.\r\nNie ma bezpieczniejszego miejsca.\r\n\r\n\"Może nie wiesz, ale Żniwa nazywane są też dobrymi zbiorami. Wciąż mówią tak na ulicach: Dobre Żniwa, Zbiory Obfitości. Rozumieją to jako odbieranie nagrody, podstawowy warunek ich negocjacji z Sajonem. Ludzie oczywiście postrzegają je inaczej. Dla nich są symbolem nieszczęścia. Oznaczają głód. Śmierć. Dlatego nazywają nas kosiarzami. Ponieważ pomagamy prowadzić ludzi na śmierć\".\r\n\r\nRok 2059. Dziewiętnastoletnia Paige Mahoney pracuje w kryminalnym podziemiu Sajonu Londyn. Jej szefem jest Jaxon Hall, na którego zlecenie pozyskuje informacje, włamując się do ludzkich umysłów. Paige jest sennym wędrowcem i w świecie, w którym przyszło jej żyć, zdradą jest już sam fakt, że oddycha.\r\n\r\nPewnego dnia jej życie zmienia się na zawsze. Na skutek fatalnego splotu okoliczności zostaje przetransportowana do Oksfordu – tajemniczej kolonii karnej, której istnienie od dwustu lat utrzymywane jest w tajemnicy. Kontrolę nad nią sprawuje potężna, pochodząca z innego świata rasa Refaitów. Paige trafia pod protektorat tajemniczego Naczelnika – staje się on jej panem i trenerem, jej naturalnym wrogiem. Jeśli Paige chce odzyskać wolność, musi poddać się zasadom panującym w miejscu, w którym została przeznaczona na śmierć.\r\n\r\n\"Czas żniw\" jest dziełem wyjątkowym. Samantha Shannon to młoda pisarka o ogromnych ambicjach i imponującej wyobraźni, która w swej debiutanckiej powieści stworzyła niezwykle sugestywną i inteligentnie skonstruowaną wizję świata.', 2013, 'Książki/Paige1.png', 30),
(11, 'Zakon Mimów. Tom 2', 'Wydawnictwo SQN', 'Shannon Samantha', 'Fantasy', 'Kontynuacja bestsellerowego cyklu!\r\n\r\nZrobili z nas przestępców. Czas odzyskać, co nasze. \r\n\r\nSpektakularna ucieczka z kolonii karnej Szeol I ma tragiczny finał. Zaledwie garstce udaje się ukryć na ulicach Londynu. Sajon nie śpi. Czuwa. Każdy z ocalałych musi się mieć na baczności.\r\n\r\nPaige, najbardziej poszukiwana osoba w całym Londynie, pragnie za wszelką cenę przekazać społeczności jasnowidzów informacje o Refaitach i Emmitach. Postanawia zwołać zebranie Eterycznego Stowarzyszenia. Czy najbardziej wpływowi przywódcy przestępczego syndykatu stawią się na wezwanie? Czy pogrążeni we własnych intrygach będą chcieli słuchać o rzekomych wytworach wyobraźni młodej dziewczyny?\r\n\r\nRefaici wiedzą, że ich sekret nie jest już bezpieczny. Wyłaniają się z cieni, by wyeliminować zagrożenie. Paige musi się ukrywać. Nie może nikomu zaufać.\r\n\r\nRozpoczyna się polowanie na śniącego wędrowca.', 2015, 'Książki/Paige2.png', 26.79),
(12, 'Pieśń Jutra. Tom 3', 'Wydawnictwo SQN', 'Shannon Samantha', 'Fantasy', 'Kontynuacja bestsellerowego cyklu.\r\n\r\nBuntowniczka, która zostaje królową.\r\n\r\nPo krwawych i brutalnych walkach Paige Mahoney zyskała odpowiedzialną funkcję – została wybrana Zwierzchniczką. Pod rządami ma teraz całą populację londyńskich kryminalistów.\r\n\r\nWystąpiła przeciwko Jaxonowi Hallowi. Narobiła sobie żądnych krwi wrogów, z których każdy czeka na jej najmniejszy błąd. Teraz zadanie ustabilizowania sytuacji w podzielonym podziemiu będzie prawdziwym wyzwaniem.\r\n\r\nPanowanie Paige może szybko dobiec końca. Wszystko przez wprowadzenie Tarczy Czuciowej, śmiertelnej technologii, która przyniesie zgubę społeczności jasnowidzów i… całemu światu, jaki znają.\r\n\r\nGorąco wyczekiwany trzeci tom bijącej rekordy popularności serii „Czas Żniw” – przełomowej dystopijnej fantasy będącej wyrazem imponującej wyobraźni Samanthy Shannon.', 2017, 'Książki/Paige3.png', 30.09),
(13, 'Koniec Maskarady. Tom 4', 'Wydawnictwo SQN', 'Shannon Samantha', 'Fantasy', 'Paige Mahoney po raz kolejny uniknęła śmierci. \r\n\r\nWydarta ze szponów swoich ciemiężców umknęła do bezpiecznej kryjówki w Paryżu, gdzie los rzuca ją między walczące z Sajonem frakcje oraz zbirów gotowych zabić, byle ocalić marionetkowe imperium Refaitów.\r\n \r\nTajemniczy Program Domino ma wobec Paige plany, ale ona kieruje się swoimi własnymi ambicjami. Wraz z Arcturusem Mesarthimem – niegdysiejszym wrogiem – rusza na niebezpieczną misję, która zawiedzie ją do paryskich katakumb, a z nich prosto ku połyskliwym korytarzom Wersalu. Jeśli im się powiedzie, prawdopodobnie zmieni rebelię w otwartą wojnę. \r\n \r\nPodczas gdy imperium poszerza swoje granice, a wolny świat drży w jego cieniu, Paige musi stawić czoła własnym wspomnieniom z katowni Sajonu. W tych niebezpiecznych czasach usiłuje też zrozumieć swoją więź z Arcturusem, a ta z dnia na dzień staje się coraz silniejsza.\r\n \r\nCzwarty tom bestsellerowej serii The Bone Season, porywającej opowieści o świecie z przyszłości.', 2021, 'Książki/Paige4.png', 30.09),
(14, 'I nie było już nikogo', 'Wydawnictwo Dolnośląskie', 'Christie Agatha', 'Kryminał', 'Tajemniczy gospodarz zaprasza do domu na wyspie dziesięć osób. Gdy dwie z nich giną, goście zdają sobie sprawę, że to, co początkowo uważali za nieszczęśliwy wypadek, jest dziełem zabójcy. Postanawiają odkryć jego tożsamość, ale okazuje się, że… nikt nie ma alibi.\r\nOdizolowani od społeczeństwa, niezdolni do opuszczenia miejsca pobytu, umierają jeden po drugim w sposób opisany w dziecięcej rymowance, którą wywieszono w ich pokojach.', 2021, 'Książki/Christie1.png', 30.88),
(15, 'Wielka Czwórka', 'Wydawnictwo Dolnośląskie', 'Christie Agatha', 'Kryminał', 'Czterem osobom zamarzyło się, a jakże, przejęcie władzy nad światem. Chcą w tym celu wykorzystać nie tylko swoje wpływy i pieniądze, lecz także najnowsze badania naukowe!\r\n\r\nWobec takiej perspektywy za nic mają ludzkie życie. Ci, którzy stają im na drodze, giną z ręki tajemniczego mordercy. Nikt nie może czuć się bezpieczny. Tu nic nie jest takie, jakie się wydaje.\r\n\r\nCzterech na jednego to… znakomita okazja dla Herkulesa Poirota, by pokazać, co potrafi! Bond mógłby się wiele nauczyć…', 2021, 'Książki/Christie2.png', 30.55),
(16, 'Morderstwo w Orient Expressie', 'Wydawnictwo Dolnośląskie', 'Christie Agatha', 'Kryminał', 'Ekskluzywna edycja kolekcjonerska wybranych dzieł Agaty Christie z okazji 100-lecia wydania pierwszej książki z Herkulesem Poirot.\r\n\r\nHerkules Poirot po rozwiązaniu sprawy kryminalnej w Azji wraca do Europy. Pociąg Orient Express, którym podróżuje, grzęźnie w zaspie śnieżnej. W nocy w niewyjaśnionych okolicznościach ginie jeden z pasażerów. Detektyw Poirot rozpoczyna dochodzenie, a jego podróż zamienia się w śledztwo. Fakty wskazują, że zabójca zajmuje przedział w tym samym wagonie… Czy Poirot zdoła rozwiązać zagadkę tajemniczego morderstwa? Sprawa nie należy do łatwych - każdy pasażer jest podejrzany…', 2021, 'Książki/Christie3.png', 37.42),
(17, 'Mord nocy letniej', 'Wydawnictwo Dolnośląskie', 'Christie Agatha', 'Kryminał', 'Królowa kryminału w wakacyjnej odsłonie! Sięgnijcie po wyśmienitą kolekcję gorących opowiadań, które rozpalają emocje do czerwoności.\r\n\r\nLatem bowiem wraz ze wzrostem temperatury rośnie też potencjał zła.\r\n\r\nOd Kornwalii po Riwierę Francuską, od delfickich świątyń po angielskie wiejskie domy słynne postacie stworzone przez Agathę Christie niestrudzenie rozwiązują najbardziej skomplikowane zagadki kryminalne.\r\n\r\nGdy praży letnie słońce, warto będzie rozłożyć leżak, otworzyć książkę i śledzić nieprawdopodobne zwroty akcji, które serwuje niedościgniona Agatha Christie.', 2021, 'Książki/Christie4.png', 30.34),
(18, 'Wigilia Wszystkich Świętych', 'Wydawnictwo Dolnośląskie', 'Christie Agatha', 'Kryminał', 'Mała Joyce zostaje utopiona podczas niewinnej halloweenowej zabawy, bo powiedziała, że kiedyś była świadkiem morderstwa. Wezwany na pomoc Herkules Poirot ma więc do rozwiązania sprawę zabójstwa sprzed kilku dni i... kilku morderstw sprzed paru lat.\r\nW powieści unosi się duch tytułowego święta, a analiza ludzkich charakterów przyprawia o gęsią skórkę.', 2021, 'Książki/Christie5.png', 37.42),
(19, 'Noc w bibliotece', 'Wydawnictwo Dolnośląskie', 'Christie Agatha', 'Kryminał', 'Skandal! W bibliotece pułkownika Bantry’ego znaleziono zwłoki młodej kobiety. Jej tożsamość pozostaje zagadką, a podejrzenia mieszkańców St. Mary Mead padają na pana domu. Czyżby szanowany arystokrata miał jakieś mroczne tajemnice? Może chciał się pozbyć niewygodnej kochanki, gdyż ofiarą jest atrakcyjna tancerka z ekskluzywnego hotelu.\r\nŻona pułkownika, oburzona tymi podejrzeniami, wzywa pannę Marple – starą znajomą o nieprzeciętnych zdolnościach śledczych.', 2021, 'Książki/Christie6.png', 30.59),
(20, 'Pani McGinty nie żyje', 'Wydawnictwo Dolnośląskie', 'Christie Agatha', 'Kryminał', 'Dlaczego zginęła prosta kobieta sprzątająca ludziom po domach, pani McGinty? Czy rzeczywiście zabił ją jej lokator dla kilku funtów ukrytych pod podłogą?\r\nDo Herkulesa Poirot zgłasza się policjant, który nie wierzy w winę oskarżonego i skazanego Jamesa Bentleya. W Broadhinny, gdzie doszło do tragedii, wszyscy mieszkańcy to prawi ludzie, a na ołtarzu cudzej prawości niejeden już położył głowę – jak trzeźwo zauważa detektyw. Co więcej, tylko jego zastanawia, kogo przedstawiają fotografie ze starej gazety.\r\n„Pani McGinty nie żyje. Umarła, ale jak?\r\nNa kolanach, jak ja, o tak”.', 2021, 'Książki/Christie7.png', 27.49),
(21, 'Pięć małych świnek', 'Wydawnictwo Dolnośląskie', 'Christie Agatha', 'Kryminał', 'Ekskluzywna edycja kolekcjonerska wybranych dzieł Agaty Christie z okazji 100-lecia wydania pierwszej książki z Herkulesem Poirot.\r\n\r\nAmyas Crale, genialny malarz czuły na kobiece wdzięki, jego zazdrosna żona Karolina oraz młoda głodna życia modelka Elza to nie było zgodne trio... Gdy Amyas został otruty, nikt nie miał wątpliwości, że morderczynią jest żona. Karolina, osądzona i skazana, pisze list do córki, w którym zapewnia o swojej niewinności. Badając tę sprawę sprzed lat, Herkules Poirot drobiazgowo analizuje wspomnienia świadków.\r\n\r\nPowieść przypomina konstrukcją film Rashomon Akiry Kurosawy: każdy ma prawo do własnej wersji wydarzeń, a kluczem jest prawda psychologiczna, nie poszlaki.', 2021, 'Książki/Christie8.png', 33.68);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `magazyn`
--

CREATE TABLE `magazyn` (
  `ID_Ksiazki` int(11) DEFAULT NULL,
  `Ilosc_ksiazek` int(11) DEFAULT NULL,
  `Ilosc_kupionych` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `magazyn`
--

INSERT INTO `magazyn` (`ID_Ksiazki`, `Ilosc_ksiazek`, `Ilosc_kupionych`) VALUES
(1, 50, 1500),
(2, 50, 1000),
(3, 120, 950),
(4, 0, 800),
(5, 200, 1200),
(6, 200, 800),
(7, 150, 750),
(8, 300, 1000),
(9, 1050, 100),
(10, 300, 450),
(11, 302, 330),
(12, 400, 120),
(13, 700, 407),
(14, 399, 130),
(15, 563, 288),
(16, 888, 230),
(17, 1200, 688),
(18, 707, 55),
(19, 88, 670),
(20, 700, 10),
(21, 10, 25);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oceny_ksiazek`
--

CREATE TABLE `oceny_ksiazek` (
  `ID` int(11) NOT NULL,
  `ID_Ksiazki` int(11) DEFAULT NULL,
  `ID_Uzytk` int(11) DEFAULT NULL,
  `Ocena` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `oceny_ksiazek`
--

INSERT INTO `oceny_ksiazek` (`ID`, `ID_Ksiazki`, `ID_Uzytk`, `Ocena`) VALUES
(1, 1, 1, 5),
(2, 1, 2, 5),
(3, 2, 1, 5),
(4, 2, 2, 4.5),
(5, 3, 1, 5),
(6, 3, 2, 5),
(7, 4, 1, 5),
(8, 4, 2, 4),
(9, 5, 1, 5),
(10, 5, 2, 5),
(11, 6, 1, 2),
(12, 6, 2, 4),
(13, 7, 1, 3.5),
(14, 7, 2, 4),
(15, 8, 1, 5),
(16, 9, 1, 5),
(17, 10, 1, 4),
(18, 11, 1, 4),
(19, 12, 1, 3.5),
(20, 13, 1, 5),
(21, 14, 1, 5),
(22, 15, 1, 4.5),
(23, 16, 1, 5),
(24, 16, 3, 3),
(25, 17, 1, 4),
(26, 17, 2, 5),
(27, 17, 2, 3),
(28, 18, 1, 5),
(29, 19, 1, 5),
(30, 20, 1, 5),
(31, 21, 1, 5);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownicy`
--

CREATE TABLE `uzytkownicy` (
  `ID` int(11) NOT NULL,
  `Login` varchar(50) NOT NULL,
  `Haslo` varchar(50) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Adres` varchar(30) DEFAULT NULL,
  `Kod_pocztowy` varchar(30) DEFAULT NULL,
  `Premium` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `uzytkownicy`
--

INSERT INTO `uzytkownicy` (`ID`, `Login`, `Haslo`, `Email`, `Adres`, `Kod_pocztowy`, `Premium`) VALUES
(1, 'Wombat', 'ZAQ!2wsx', 'adres@email.com', 'ul. Sinusoidalna 144', '00-001', NULL),
(2, 'JanuszK', 'aaa', 'jan@kowalky.pl', 'ul. Błotna 64', '00-970', NULL),
(3, 'Dhahyc5', 'www', 'mail@poczta.com', 'ul. Kartezjańska 16', '70-445', NULL),
(5, 'admin', 'admin', 'admin@bukuku.com', 'ul. Sinusoidalna 144', '42-713', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE `zamowienia` (
  `ID` int(11) NOT NULL,
  `ID_Uzytk` int(11) DEFAULT NULL,
  `DataZam` date DEFAULT NULL,
  `Status` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `zamowienia`
--

INSERT INTO `zamowienia` (`ID`, `ID_Uzytk`, `DataZam`, `Status`) VALUES
(1, 1, '2023-11-22', 'Dostarczono'),
(2, 3, '2023-11-29', 'Wysłano');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zawzam`
--

CREATE TABLE `zawzam` (
  `ID` int(11) NOT NULL,
  `ID_Zam` int(11) DEFAULT NULL,
  `ID_Ksiazki` int(11) DEFAULT NULL,
  `Ilosc` int(11) DEFAULT NULL,
  `Cena` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zawzam`
--

INSERT INTO `zawzam` (`ID`, `ID_Zam`, `ID_Ksiazki`, `Ilosc`, `Cena`) VALUES
(1, 1, 21, 1, 33.68),
(2, 1, 19, 2, 30.59),
(3, 1, 5, 1, 49),
(4, 1, 9, 1, 23.06),
(5, 2, 1, 1, 33.49);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `ksiazki`
--
ALTER TABLE `ksiazki`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `magazyn`
--
ALTER TABLE `magazyn`
  ADD KEY `FK_Magazyn_Ksiazki` (`ID_Ksiazki`);

--
-- Indeksy dla tabeli `oceny_ksiazek`
--
ALTER TABLE `oceny_ksiazek`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_Oceny_Ksiazek_Ksiazki` (`ID_Ksiazki`),
  ADD KEY `FK_Oceny_Ksiazek_Uzytkownicy` (`ID_Uzytk`);

--
-- Indeksy dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Login` (`Login`);

--
-- Indeksy dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_Zamowienia_Uzytkownicy` (`ID_Uzytk`);

--
-- Indeksy dla tabeli `zawzam`
--
ALTER TABLE `zawzam`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_ZawZam_Ksiazki` (`ID_Ksiazki`),
  ADD KEY `FK_ZawZam_Zamowienia` (`ID_Zam`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ksiazki`
--
ALTER TABLE `ksiazki`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `oceny_ksiazek`
--
ALTER TABLE `oceny_ksiazek`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `zamowienia`
--
ALTER TABLE `zamowienia`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `zawzam`
--
ALTER TABLE `zawzam`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `magazyn`
--
ALTER TABLE `magazyn`
  ADD CONSTRAINT `FK_Magazyn_Ksiazki` FOREIGN KEY (`ID_Ksiazki`) REFERENCES `ksiazki` (`ID`);

--
-- Constraints for table `oceny_ksiazek`
--
ALTER TABLE `oceny_ksiazek`
  ADD CONSTRAINT `FK_Oceny_Ksiazek_Ksiazki` FOREIGN KEY (`ID_Ksiazki`) REFERENCES `ksiazki` (`ID`),
  ADD CONSTRAINT `FK_Oceny_Ksiazek_Uzytkownicy` FOREIGN KEY (`ID_Uzytk`) REFERENCES `uzytkownicy` (`ID`);

--
-- Constraints for table `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD CONSTRAINT `FK_Zamowienia_Uzytkownicy` FOREIGN KEY (`ID_Uzytk`) REFERENCES `uzytkownicy` (`ID`);

--
-- Constraints for table `zawzam`
--
ALTER TABLE `zawzam`
  ADD CONSTRAINT `FK_ZawZam_Ksiazki` FOREIGN KEY (`ID_Ksiazki`) REFERENCES `ksiazki` (`ID`),
  ADD CONSTRAINT `FK_ZawZam_Zamowienia` FOREIGN KEY (`ID_Zam`) REFERENCES `zamowienia` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
