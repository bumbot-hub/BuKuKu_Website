<!DOCTYPE html>
<html lang="pl">
<head>
<meta charset="utf-8">
    <title>Księgarnia BuKuKu</title>
    <link rel="stylesheet" href="style.css" type="text/css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
</head>
<body>
    <section id="bl">
        <a href="home.php"><img src="logo.png" alt="logo"></a>
    </section>

    <section id="bs">
        <form method="post" action="wyszukiwanie.php">
            <input type="text" placeholder="Wpisz czego szukasz" name="text">
            <input type="submit" value="Szukaj">
        </form>
    </section>

    <section id="bp">
        <?php
            $cookieName = 'userLoggedIn';

            // Sprawdź, czy ciasteczko istnieje
            if (isset($_COOKIE[$cookieName])) {
                echo "<h6 style='display: inline;'>Witaj, " . htmlspecialchars($_COOKIE[$cookieName]) . "</h6>";
                echo "<h5 id='Umenu'>v</h5>";
            } else {
                header("Location: login.php");
            }
        ?>
        <section id="Umcontent" class="hidden">
            <form method="post" action="api/logout.php">
                <input type='submit' value="Wyloguj się">
            </form>
        </section>

        <section id="koszyk">
            <i class="fas fa-shopping-cart"></i>
            <h6>0.00 zł</h6> <!-- później zmienić na kwotę z bazy -->
        </section>
    </section>

    <section id="menu">
        <a href="ksiazki.php">Wszystkie książki</a>
        <a href="top.php" class="active">TOP 15</a>
        <?php
         $polaczenie=mysqli_connect('localhost', 'root', '', 'książki');
         
         $zapytanie="SELECT DISTINCT(gatunek) FROM ksiazki;";
             
         $wynik=mysqli_query($polaczenie, $zapytanie);
        
         while($wiersz=mysqli_fetch_array($wynik)){
        
             echo "<a href=$wiersz[0].php>$wiersz[0]</a>";
            }
        ?>
    </section>
        
    <section id="ksiazki">
        <h2>Wszystkie książki</h2>
        <section class="lista2">
            <?php
            $polaczenie=mysqli_connect('localhost', 'root', '', 'książki');
        
            $zapytanie="SELECT ksiazki.id, ksiazki.zdjecie, ksiazki.cena, ksiazki.tytul, ksiazki.autor, AVG(oceny_ksiazek.ocena), ksiazki.opis FROM ksiazki
            INNER JOIN magazyn ON magazyn.id_ksiazki=ksiazki.id
            INNER JOIN oceny_ksiazek ON oceny_ksiazek.id_ksiazki=ksiazki.id
            WHERE ksiazki.gatunek LIKE 'Fantasy'
            GROUP BY oceny_ksiazek.id_ksiazki 
            ORDER BY AVG(oceny_ksiazek.Ocena) DESC, magazyn.ilosc_kupionych DESC;";
        
            $wynik=mysqli_query($polaczenie, $zapytanie);
        
            while($wiersz=mysqli_fetch_array($wynik)){
                echo "<section id=ksiazka>
                    <img src=$wiersz[1] onclick=window.location.href='k$wiersz[0].php'>
                    <br>
                    <section id=cenaocena>
                        <h5>$wiersz[2] zł</h5><p><i class='fas fa-star'></i>$wiersz[5]</p>
                    </section>
                    <p>$wiersz[3]</p>
                    <small>$wiersz[4]</small><br>
                    <input type=button value='Dodaj do koszyka'>
                </section>";
            }
            ?>
        </section>
    </section>
    
    <footer>
        <p>Stronę wykonali: Kamil Kula, Michał Kukuła, Adrian Bula</p>
    </footer>
    <script src="main.js"></script>
</body>
</html>