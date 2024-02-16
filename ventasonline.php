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
    $position = $_POST['position'];
    $name = $_POST['name'];
    $phone = $_POST['phone'];
    $cellphone = $_POST['cellphone'];
    $message = $_POST['message'];

    // Reemplazamos caracteres no numéricos en el número de teléfono
    $phone = preg_replace("/[^0-9]/", "", $phone);
    $cellphone = preg_replace("/[^0-9]/", "", $cellphone);

    $sql = "INSERT INTO ventasonline (city, position, name, phone, cellphone, message) VALUES ('$city', '$position', '$name', '$phone', '$cellphone', '$message')";

    if ($conn->query($sql) === TRUE) {
        echo "Datos enviados correctamente. ¡Gracias por tu información!";
    } else {
        echo "Error al insertar datos en ventasonline: " . $conn->error;
    }

    $conn->close();
}
?>

