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

    $region = $_POST['region'];
    $storeName = $_POST['storeName'];
    $administrator = $_POST['administrator'];
    $cellphone = $_POST['cellphone'];
    $email = $_POST['email'];
    $address = $_POST['address'];
    $provider = $_POST['provider'];
    $message = $_POST['message'];

    $sql = "INSERT INTO tiendasbikehouse (region, storeName, administrator, cellphone, email, address, provider, message) VALUES ('$region', '$storeName', '$administrator', '$cellphone', '$email', '$address', '$provider', '$message')";

    if ($conn->query($sql) === TRUE) {
        echo "Datos enviados correctamente. ¡Gracias por tu información!";
    } else {
        echo "Error al insertar datos en tiendasbikehouse: " . $conn->error;
    }

    $conn->close();
}
?>
