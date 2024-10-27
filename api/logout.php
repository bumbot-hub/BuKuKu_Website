<?php
// Usuń ciasteczko
setcookie('userLoggedIn', '', time() - 3600, '/'); // Wygaszenie ciasteczka
// Przekieruj użytkownika na stronę główną lub inną stronę
header("Location: ../home.php");
exit();
?>