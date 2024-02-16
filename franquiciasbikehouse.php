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

    $city = $_POST['city'];
    $storeName = $_POST['storeName'];
    $franchiseContact = $_POST['franchiseContact'];
    $cellphone = $_POST['cellphone'];
    $email = $_POST['email'];
    $address = $_POST['address'];
    $message = $_POST['message'];

    // Reemplazamos caracteres no numéricos en el número de teléfono
    $cellphone = preg_replace("/[^0-9]/", "", $cellphone);

    $sql = "INSERT INTO franquiciasbikehouse (city, storeName, franchiseContact, cellphone, email, address, message) VALUES ('$city', '$storeName', '$franchiseContact', '$cellphone', '$email', '$address', '$message')";

    if ($conn->query($sql) === TRUE) {
        echo "Datos enviados correctamente. ¡Gracias por tu información!";
    } else {
        echo "Error al insertar datos en franquiciasbikehouse: " . $conn->error;
    }

    $conn->close();
}
?>


