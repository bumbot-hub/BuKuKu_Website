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
        <a href="top.php">TOP 15</a>
        <?php
         $polaczenie=mysqli_connect('localhost', 'root', '', 'książki');
         
         $zapytanie="SELECT DISTINCT(gatunek) FROM ksiazki;";
             
         $wynik=mysqli_query($polaczenie, $zapytanie);
        
         while($wiersz=mysqli_fetch_array($wynik)){
        
             echo "<a href=$wiersz[0].php>$wiersz[0]</a>";
            }
        ?>
    </section>
        
    <section id="główny">
        <?php
            $id=$_GET['id'];
            $polaczenie=mysqli_connect('localhost', 'root', '', 'książki');
            $zapytanie="SELECT Tytul, Autor, Zdjecie, Cena, AVG(Ocena) FROM ksiazki
            INNER JOIN oceny_ksiazek ON oceny_ksiazek.ID_Ksiazki=ksiazki.ID 
            WHERE ksiazki.ID=$id
            GROUP BY oceny_ksiazek.ID_Ksiazki;";
            
            $wynik=mysqli_query($polaczenie, $zapytanie);
            
            while($wiersz=mysqli_fetch_array($wynik)){
                echo "<img src=$wiersz[2]>
                    <section id='detale'>
                        <h3>$wiersz[0]</h3>
                        <h5>$wiersz[1]</h5>
                        <h6><i class='fas fa-star'></i>$wiersz[4]</h6>
                        <h2>$wiersz[3] zł</h2>
                        <input type='button' value='Dodaj do koszyka'>
                        <section id='oi'>
                            <a href='#opis'><h6>Zobacz opis</h6></a>
                            <a href='#info'><h6>Informacje szczegółowe</h6></a>
                        </section>
                    </section>";
            }
            mysqli_close($polaczenie);
        ?>
    </section>
    
    <section id="opis">
        <h2>Opis</h2>
        <?php
            $polaczenie=mysqli_connect('localhost', 'root', '', 'książki');
            $zapytanie2="SELECT Opis FROM ksiazki WHERE ID=$id;";
        
            $wynik2=mysqli_query($polaczenie, $zapytanie2);
        
            while($wiersz2=mysqli_fetch_array($wynik2)){
        
                echo "<p>$wiersz2[0]</p>";
            
            }
            mysqli_close($polaczenie);
        ?>
    </section>
    
    <section id="info">
        <h2>Informacje szczegółowe</h2>
        <?php
            $polaczenie=mysqli_connect('localhost', 'root', '', 'książki');
            $zapytanie3="SELECT ID, Tytul, Wydawnictwo, Autor, Gatunek, Rok_wydania FROM ksiazki
                        WHERE ID=$id;";
        
            $wynik3=mysqli_query($polaczenie, $zapytanie3);
        
            while($wiersz3=mysqli_fetch_array($wynik3)){
        
                echo "<table>
                    <tr>
                        <td>ID produktu:</td>
                        <td>$wiersz3[0]</td>
                    </tr>
                    <tr>
                        <td>Tytuł:</td>
                        <td>$wiersz3[1]</td>
                    </tr>
                    <tr>
                        <td>Wydawnictwo:</td>
                        <td>$wiersz3[2]</td>
                    </tr>
                    <tr>
                        <td>Autor:</td>
                        <td>$wiersz3[3]</td>
                    </tr>
                    <tr>
                        <td>Gatunek:</td>
                        <td>$wiersz3[4]</td>
                    </tr>
                    <tr>
                        <td>Rok wydania:</td>
                        <td>$wiersz3[5]</td>
                    </tr>
                    </table>";
            
            }
            mysqli_close($polaczenie);
        ?>
    </section>
    
    <footer>
        <p>Stronę wykonali: Kamil Kula, Michał Kukuła, Adrian Bula</p>
    </footer>
    <script src="main.js"></script>
</body>
</html>