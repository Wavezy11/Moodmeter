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
    if (isset($_POST['mood'])) {
        $mood = $_POST['mood'];
        $id = $_SESSION['id'];

        // Update 'gebruikerdata' table
        $updateFormQuery = "UPDATE gebruikerdata SET mood = '$mood' WHERE ID = '$id'";

        if ($conn->query($updateFormQuery) === TRUE) {
            echo "Mood in gebruikerdata table updated successfully";

            // Increment count in 'mood' table
            $updateMoodCountQuery = "UPDATE mood SET `$mood` = `$mood` + 1 WHERE ID = 143"; // Assuming the mood counts are stored in a row with ID = 1
            if ($conn->query($updateMoodCountQuery) === TRUE) {
                echo "Mood count in mood table updated successfully";
                header("location: bedankt.php");
            } else {
                echo "Error updating mood count in mood table: " . $conn->error;
            }
        } else {
            echo "Mood not set in the form submission.";
        }
    }
}

$conn->close();
?>

<!DOCTYPE html>
    <html lang="nl">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Mood</title>
        <link rel="stylesheet" href="mood.css">
        <style>
            .selected {
                border: 6.5px solid #b3d9ff; /* Change to the desired border color */
                padding: 1.5px; /* Add padding to ensure the border is visible */
                border-radius: 100px;
            }
            .mood-emoji {
    cursor: pointer;
}
        </style>
    </head>
    <body>
        <div class="header">
        <img class="roclogo" src="img/image-removebg-preview (85).png" alt="roclogo">
        </div>
        <div class="overlay">
            <div class="layout">
                <form action="" method="post" id="moodForm">
                    <img id="emoji-zeerslecht" src="img\boze emoji.png" alt="boze emoji" class="bozeemoji mood-emoji" onclick="setMood('Zeer slecht')">
                    <p class="booss"><strong>Zeer slecht</strong></p>

                    <img id="emoji-slecht" src="img\minder boos.png" alt="boze emoji" class="minderboos mood-emoji" onclick="setMood('slecht')">
                    <p class="slecht"><strong>Slecht</strong></p>

                    <img id="emoji-matig" src="img\normaal.png" alt="boze emoji" class="normaal mood-emoji" onclick="setMood('matig')">
                    <p class="normaaltext"><strong>Matig</strong></p>

                    <img id="emoji-goed" src="img\minder blij.png" alt="boze emoji" class="normaalblij mood-emoji" onclick="setMood('goed')">
                    <p class="goedtext"><strong>Goed</strong></p>

                    <img id="emoji-zeergoed" src="img\goed.png" alt="boze emoji" class="prima mood-emoji" onclick="setMood('Zeer goed')">
                    <p class="zeergoedtext"><strong>Zeer goed</strong></p>

                    <input type="hidden" name="ID" value="$id">
                    <input type="hidden" name="mood" id="moodInput" value="">
                    <input type="submit" value="verzenden">
                </form>
            </div>
        </div>

        <script>
            function setMood(mood) {
               
                var emojiImages = document.querySelectorAll('.mood-emoji');
                emojiImages.forEach(function (emoji) {
                    emoji.classList.remove('selected');
                });

            
                var selectedEmoji = document.getElementById('emoji-' + mood);
                selectedEmoji.classList.add('selected');

                document.getElementById('moodInput').value = mood;
            }
        </script>
    </body>
    </html>