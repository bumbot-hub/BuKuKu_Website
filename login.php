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
            <h2>Zaloguj się</h2>
            <form method="post">
                <label>Login* </label><input type="text" name="log" required>
                <br>
                <label>Hasło* </label><input type="password" name="pass" required>
                <br>
                <input type="submit" value="Zaloguj się">
                <p>Nie posidasz konta? <a href="rej.php">Zarejestruj się</a></p>
            </form>
            <?php
                $con = mysqli_connect('localhost', 'root', '', 'książki');
                if (isset($_POST['log']) && isset($_POST['pass'])) {
                    $log = $_POST['log'];
                    $pass = $_POST['pass'];
                    $sql = "SELECT login, haslo FROM Uzytkownicy WHERE login = '$log';";
                    $zap = mysqli_query($con, $sql);

                    if ($wiersz = mysqli_fetch_array($zap)) {
                        if ($wiersz[1] == $pass) { // Pamiętaj o haszowaniu w praktycznym użyciu
                            echo "<p>Zalogowano pomyślnie</p>";
                            $expire_time = time() + 3600; // 1 godzina
                            setcookie('userLoggedIn', $log, $expire_time, "/");
                            header("Location: home.php");
                            exit;
                        } else {
                            echo "<p>Nie prawidłowe hasło lub login</p>";
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