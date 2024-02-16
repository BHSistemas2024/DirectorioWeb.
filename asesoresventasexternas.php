<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "directorio";

    $conn = new mysqli($servername, $username, $password, $dbname);

    if ($conn->connect_error) {
        die("Error en la conexión: " . $conn->connect_error);
    }

    $area = $_POST['area'];
    $zone = $_POST['zone'];
    $name = $_POST['name'];
    $cellphone = $_POST['cellphone'];
    $email = $_POST['email'];
    $message = $_POST['message'];

    $sql = "INSERT INTO asesoresventasexternas (area, zone, name, cellphone, email, message) VALUES ('$area', '$zone', '$name', '$cellphone', '$email', '$message')";

    if ($conn->query($sql) === TRUE) {
        echo "Datos enviados correctamente. ¡Gracias por tu información!";
    } else {
        echo "Error al insertar datos en asesoresventasexternas: " . $conn->error;
    }

    $conn->close();
}
?>

