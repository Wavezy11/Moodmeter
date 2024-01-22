<?php 
session_start();

error_reporting(E_ALL);
ini_set('display_errors', 1);

// Assuming these session variables are set in a previous script
if (isset($_SESSION['voornaam'])) {
    $naam = $_SESSION['voornaam'];
  }

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bedankt</title>
    <link rel="stylesheet" href="bedankt.css">
</head>
<body>
    <div class="header">
        <img class="roclogo" src="img/image-removebg-preview (85).png" alt="roclogo">
    </div>
    <div class="inhoud">
    <p class="hoi">Bedankt voor het invullen <?php echo $naam ?> </p>
    <p class="mening">Je mening zorgt dat wij een beter beeld krijgen over onze open dagen </p>
    </div>
    <form action="index.php">
        <button class="knop">Keer terug naar het form</button>
</form>
</body>
</html>
