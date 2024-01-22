<?php
session_start();

$servername = "localhost";
$username = "root";
$password = "";
$databasename = "jaman";

$conn = new mysqli($servername, $username, $password, $databasename);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}



$idvanvorigepagina = $_GET['id'];

if ($_SERVER["REQUEST_METHOD"] === "POST") {
   
    $bezoeker = $_POST["Bezoeker"]; 
    $student = $_POST["Student"];
    $ouder = $_POST["Ouder"];
   
   

    $idvanvorigepagina = $_POST['id'];

    if ($_SERVER["REQUEST_METHOD"] === "POST") {
        $bezoeker = $_POST["Bezoeker"]; 
        $student = $_POST["Student"];
        $ouder = $_POST["Ouder"];
    
        // Update values in the 'rol' table
        $stmtRol = $conn->prepare("UPDATE rol SET Bezoeker = Bezoeker + ?, Student = Student + ?, Ouder = Ouder + ? WHERE ID = ?");
        $stmtRol->bind_param("iiii", $bezoeker, $student, $ouder, $idvanvorigepagina);
        $stmtRol->execute();
        $stmtRol->close();
    
        // Update values in the 'opleidingen' table
        $stmtOpleidingen = $conn->prepare("UPDATE opleidingen SET AllroundICT = AllroundICT + ?, ExpertICT = ExpertICT + ? WHERE ID = ?");
        $stmtOpleidingen->bind_param("iii", $bezoeker, $student, $idvanvorigepagina);
        $stmtOpleidingen->execute();
        $stmtOpleidingen->close();
    }
    
    
}
    if (isset($_POST["Bezoeker"])) {
        $stmt = $conn->prepare("UPDATE rol SET Bezoeker = $bezoeker + 1");
        $stmt->execute();
        $stmt->close();  
    }

    if (isset($_POST["Student"])) {
        $stmt = $conn->prepare("UPDATE rol SET Student = $student + 1");
        $stmt->execute();
        $stmt->close();
    }

    if (isset($_POST["Ouder"])) {
        $stmt = $conn->prepare("UPDATE rol SET Ouder = $ouder + 1");
        $stmt->execute();
        $stmt->close();
    }

// 

$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rollen</title>
    <link rel="stylesheet" href="index.css">
</head>
<body>
    <div class="header">
        <img class="roclogo" src="img/image-removebg-preview (85).png" alt="roclogo">
    </div>
    <div class="border">
        <p class="Mening">Je rol vandaag was?</p>
        <div class="buttonslayout">
            <form method="post" action="">
                <input type="submit" name="Bezoeker" value="Bezoeker">
                <input type="submit" name="Student" value="Student">
                <input type="submit" name="Ouder" value="Ouder">
            </form>
        </div>
    </div>
</body>
</html>
