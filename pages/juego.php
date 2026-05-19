<?php

session_start();

include("../config/database.php");
$database = new Database();
$conn = $database->connect();
$nivel = isset($_GET['nivel']) ? intval($_GET['nivel']) : 1;
/* ========================= */
/* GENERAR PISTAS RANDOM */
/* ========================= */

if(!isset($_SESSION['pistas_random'])){
    $sql = "SELECT * FROM pistas ORDER BY RAND() LIMIT 4";
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $_SESSION['pistas_random'] =
    $stmt->fetchAll(PDO::FETCH_ASSOC);
}

$pistas = $_SESSION['pistas_random'];

if($nivel > count($pistas)){
    unset($_SESSION['pistas_random']);
    header("Location: final.php");
    exit();
}

$pista = $pistas[$nivel - 1];
if (!$pista) {
    header("Location: final.php");
    exit();
}

$mensaje = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $respuesta_usuario = strtolower(trim($_POST['respuesta']));
    $respuesta_correcta = strtolower($pista['respuesta']);
    if ($respuesta_usuario == $respuesta_correcta) {
        $siguiente = $nivel + 1;
        header("Location: juego.php?nivel=$siguiente");
        exit();

    } else {

        $mensaje = "⚠ ACCESO DENEGADO — Respuesta incorrecta";
    }
}

?>

<!DOCTYPE html>
<html lang="es">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Juego</title>
    <link rel="stylesheet" href="../assets/css/estilos.css">

</head>

<body>
    <canvas id="matrix"></canvas>
    <main class="contenedor">

        <h1 class="parpadeo">

            NIVEL <?php echo $nivel; ?>

        </h1>

        <div class="historia">

            <p>

                <?php echo $pista['pregunta']; ?>

            </p>

        </div>

        <form method="POST" onsubmit="return validarRespuesta()">

            <input type="text" name="respuesta" placeholder="Ingresa tu respuesta" required autocomplete="off">

            <br><br>

            <button type="submit" class="boton">

                DESBLOQUEAR

            </button>

        </form>

        <p class="error">

            <?php echo $mensaje; ?>

        </p>

    </main>

    <script src="../assets/js/script.js"></script>

</body>

</html>