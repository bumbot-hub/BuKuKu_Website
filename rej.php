<!DOCTYPE html>
<html lang='pl'>
    <head>
        <meta charset="utf-8">
        <title>Księgarnia BuKuKu</title>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        <section id="banner">
            <a href="home.php"><img src="logo.png" alt="logo"></a>
        </section>

        <section id="formularz">
            <h2>Utwórz konto</h2>
            <form method="post">
                <label>Login* </label><input type="text" name="log" required>
                <br>
                <label>Hasło* </label><input type="password" name="pass" required>
                <br>
                <label>Adres e-mail* </label><input type="email" name="email" required>
                <br>
                <label>Adres </label><input type="text" name="adres">
                <br>
                <label>Kod pocztowy </label><input type="text" name="kod">
                <br>
                <input type="submit" value="Utwórz konto">
                <p>Posiadasz już konto? <a href="login.php">Zaloguj się</a></p>
            </form>
            <?php
                $con = mysqli_connect('localhost', 'root', '', 'książki');
                if (isset($_POST['log']) && isset($_POST['pass']) && isset($_POST['email'])) {
                    $log = $_POST['log'];
                    $pass = $_POST['pass'];
                    $email = $_POST['email'];
                    $adres = $_POST['adres'];
                    $kod = $_POST['kod'];
                    $sql = "SELECT login, haslo FROM Uzytkownicy WHERE login LIKE '$log';";
                    $zap = mysqli_query($con, $sql);

                    if ($wiersz = mysqli_fetch_row($zap)) {
                        if ($wiersz[1] == $pass) {
                            echo "<p>Zalogowano pomyślnie</p>";
                        } else {
                            echo "<p>Nieprawidłowe hasło lub login</p>";
                        }
                    }
                }

                mysqli_close($con);
            ?>
        </section>

        <footer>
            <p>Stronę wykonał: Kamil Kula, Michał Kukuła, Adrian Bula</p>
        </footer>
    </body>
</html>