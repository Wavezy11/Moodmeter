<?php
session_start();

error_reporting(E_ALL);
ini_set('display_errors', 1);

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "jaman";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $voornaam = $_POST["voornaam"];
    $achternaam = $_POST["Achternaam"];
    $emailadres = $_POST["Emailadres"];
    $rol = $_POST["rol"];
    $straatnaamHuissnummer = $_POST["StraatnaamHuisnummer"];
    $stad = $_POST["Stad"];
    $leeftijd = $_POST["Leeftijd"];
    
    
   $opleiding = $_POST['opleiding'];

  
   $opleiding = empty($opleiding) ? 'DefaultOpleiding' : $opleiding;


    $dob = new DateTime($leeftijd);
    $now = new DateTime();
    $age = $now->diff($dob)->y;

  
    $sqlForm = $conn->prepare("INSERT INTO gebruikerdata (Voornaam, Achternaam, Emailadres, Rol, Opleiding, StraatnaamHuisnummer, Stad, Leeftijd, last_inserted) VALUES (?, ?, ?, ?, ?, ?, ?, ? , CURRENT_TIMESTAMP)");
    $sqlForm->bind_param("ssssssss", $voornaam, $achternaam, $emailadres, $rol, $opleiding, $straatnaamHuissnummer, $stad, $age);
    $sqlForm->execute();
    $sqlForm->close();

    


    $_SESSION['id'] = $conn->insert_id;
    $_SESSION['voornaam'] = $voornaam;
    $_SESSION['achternaam'] = $achternaam;
    $_SESSION['emailadres'] = $emailadres;

    session_write_close();

    header("Location: mood.php");
    exit();
}

$conn->close();
?>



<!DOCTYPE html>
<html lang="nl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form</title>
    <link rel="stylesheet" href="form.css">
    <style>
        
        .popup {
            display: none;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            padding: 20px;
            background-color: #ffffff;
            border: 2px solid #333; 
            z-index: 1000;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5);
        }

        /* .overlay {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            z-index: 999;
        } */

        .close-btn {
            cursor: pointer;
            position: absolute;
            top: 10px;
            right: 10px;
            font-size: 20px;
            color: #333; 
        }
        .selected {
            background-color: green; 
          
            
        }
        .selected:hover {
            background-color: green;    
            transition-duration: 0.471s;
        }
    </style>
</head>
<body>
    <div class="header">
        <img class="roclogo" src="img/image-removebg-preview (85).png" alt="roclogo">
    </div>
    <main>
        <div class="geheim">
            <?php 
            
            ?>
            <a href="beheer.php"> <button id="shh"></button></a>
        </div>
        <div class="popup" id="popup">
            <span class="close-btn" onclick="closePopup()">&times;</span>
          
         
        </div>
        <div class="opendag">
            <p class="welkom"><strong>Vul hier je gegevens in:</strong></p>
            <form id="mainForm" method="post" action="">
                <input type="text" name="voornaam" placeholder="Voornaam" required>
                <input type="text" name="Achternaam" placeholder="Achternaam" required>
                <input type="email" name="Emailadres" placeholder="Emailadres" required>
                <input type="text" name="StraatnaamHuisnummer" placeholder="Straat" required>
                <input type="text" name="Stad" placeholder="Stad" required>
                <input type="date" name="Leeftijd" placeholder="leeftijd" required>
                <select id="rol" name="rol" required>
                    <option value="rol">kies hier je rol</option>
                    <option value="Bezoeker">Bezoeker</option>
                    <option value="Student">Student</option>
                    <option value="Ouders">Ouders</option>
                    <option value="Overig">Overig</option>
                </select>
                <input type="submit" id="verzendenButton" name="verzenden" placeholder="verzenden" >
            </form>
        </div>
        <div class="selecteer">
            <p class="kiezen"><strong>Kies je opleiding</strong></p>
            <div class="buttonslayout">
    <form action="" method="post" class="formpa">
        <input type="hidden" id="selectedOpleiding" name="opleiding" value="">
        <input type="button" class="roleButton" value="Allrounder ICT" data-value="Allrounder ICT">
        <input type="button" class="roleButton" value="Expert ICT" data-value="Expert ICT">
        <input type="button" class="roleButton" name="opleiding" value="Grafisch vormgever" data-value="Grafisch vormgever">
        <input type="button" class="roleButton" name="opleiding" value="Webdeveloper" data-value="Webdeveloper">
        <input type="button" class="roleButton" name="opleiding" value="Content creator" data-value="Content creator">
        <input type="button" class="roleButton" name="opleiding" value="E-commerce Specialist" data-value="E-commerce Specialist">
        <input type="button" class="roleButton" name="opleiding" value="Accountmanager" data-value="Accountmanager">
        <input type="button" class="roleButton" name="opleiding" value="Retailmanager" data-value="Retailmanager">
        <input type="button" class="roleButton" name="opleiding" value="Online marketeer" data-value="Online marketeer">
    </form>
</div>

        </div>
    </main>

    <script>
    
    document.addEventListener('DOMContentLoaded', function () {
    const roleButtons = document.querySelectorAll('.roleButton');
    const selectElement = document.getElementById('selectedOpleiding');
    const verzendenButton = document.getElementById('verzendenButton');

    roleButtons.forEach(function (button) {
        button.addEventListener('click', function () {
            roleButtons.forEach(function (btn) {
                btn.classList.remove('selected');
            });

            button.classList.add('selected');
            selectElement.value = button.getAttribute('data-value') || 'DefaultOpleiding';

            // Enable the submit button
            verzendenButton.removeAttribute('disabled');
        });
    });

    // Handle form submission
    document.getElementById('mainForm').addEventListener('submit', function (event) {
        // Make sure the selected value is set before submitting the form
        if (!selectElement.value) {
            alert('Please select an opleiding.');
            event.preventDefault(); // Prevent the form from being submitted
        }
    });
});

    </script>
</body>
</html>
