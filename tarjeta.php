<?php
    include_once 'includes/sesiones.php';
    $sesiones = new Sesiones();
    if (isset($_SESSION["userfund"])) {
        echo 'Bienvenido ' . $_SESSION["userfund"];
        echo '<form method="POST" action="includes/logout.php"><input type="submit" value="Cerrar sesion"/></form>';
    } else {
        header('location:vistas/login.php');
    }
?>