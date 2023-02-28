<?php
    include 'includes/sesiones.php';
    $sesiones = new Sesiones();

    print_r($_SESSION);
    if(isset($_POST["userfund"])) {
        echo 'Bienvenido ' . $_SESSION["userfund"];
        echo '<form method="POST" action="includes/logout.php"><input type="submit" value="Cerrar sesion"/></form>';
    } else {
        header('Location: vistas/login.php');
    }
?>
