<?php
// Configuración de la conexión a la base de datos
$servername = "localhost";  // Cambia esto si no estás usando localhost
$username = "root";         // Cambia por tu nombre de usuario de MySQL
$password = "";             // Cambia por tu contraseña de MySQL (si aplica)
$dbname = "disfraces";      // Nombre de la base de datos que creaste

// Crear conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar la conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Recibir los datos del formulario
$nombre_completo = $_POST['fullName'];  // Campo 'fullName' de formulario
$tipo_pago = $_POST['paymentType'];     // Campo 'paymentType' de formulario
$disfraz_deseado = $_POST['desiredCostume'];  // Campo 'desiredCostume' de formulario
$telefono = $_POST['phoneNumber'];          // Campo 'phoneNumber' de formulario
$direccion = $_POST['address'];         // Campo 'address' de formulario
$sugerencia = $_POST['suggestion'];      // Campo 'suggestion' de formulario

// Usar una consulta preparada para evitar inyección SQL
$stmt = $conn->prepare("INSERT INTO pedidos (nombre_completo, tipo_pago, disfraz_deseado, telefono, direccion, sugerencia) 
VALUES (?, ?, ?, ?, ?, ?)");
$stmt->bind_param("ssssss", $nombre_completo, $tipo_pago, $disfraz_deseado, $telefono, $direccion, $sugerencia);

// Ejecutar la consulta
if ($stmt->execute()) {
    $mensaje = "Gracias por realizar su pedido";
    $mensaje_clase = "success";
} else {
    $mensaje = "Hubo un error al enviar el pedido. Por favor, inténtalo nuevamente.";
    $mensaje_clase = "error";
}

// Cerrar la conexión
$stmt->close();
$conn->close();
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Confirmación de Pedido</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            flex-direction: column;
        }

        .message {
            text-align: center;
            padding: 20px;
            border-radius: 10px;
            font-size: 2em;
            font-weight: bold;
            color: white;
            width: 70%;
            margin-bottom: 20px;
        }

        .success {
            background-color: #28a745; /* Verde */
        }

        .error {
            background-color: #dc3545; /* Rojo */
        }

        .button {
            background-color: #007bff;
            color: white;
            padding: 15px 30px;
            border: none;
            border-radius: 5px;
            text-align: center;
            cursor: pointer;
            font-size: 1.2em;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }

        .button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="message <?php echo $mensaje_clase; ?>">
        <?php echo $mensaje; ?>
    </div>

    <!-- Botón que redirige a la página principal -->
    <a href="productos.html" class="button">Regresar a página principal</a>
</body>
</html>
