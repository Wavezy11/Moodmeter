<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "jaman";

$conn = new mysqli($servername, $username, $password, $dbname);


if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}


$sql = "SELECT * FROM mood";
$result = $conn->query($sql);


$data = array();
while ($row = $result->fetch_assoc()) {
    $data[] = $row; 
}


echo '<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="beheer.css">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
    <div class="header">
        <img class="roclogo" src="img/image-removebg-preview (85).png" alt="roclogo">
     </div>
    <p class="text">Dashboard</p>
    <canvas id="myPieChart" width="100" height="100"></canvas>
    

    <script>
        var ctx = document.getElementById("myPieChart").getContext("2d");
        var data = ' . json_encode($data) . '; // Pass the processed data here
        var myPieChart = new Chart(ctx, {
            type: "pie",
            data: {
                labels: ["Zeer slecht", "Slecht", "Matig", "Goed", "Zeer goed"],
                datasets: [{
                    data: [data[0]["Zeer slecht"], data[0]["Slecht"], data[0]["Matig"], data[0]["Goed"], data[0]["Zeer goed"]],
                    backgroundColor: ["#FF6384", "#36A2EB", "#FFCE56", "#4CAF50", "#FF9800"]
                }]
            }
        });
    </script>
    
 
</body>
</html>';


$conn->close();
?>