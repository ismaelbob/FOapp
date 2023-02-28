<?php
    include_once 'includes/sesiones.php';
    $sesiones = new Sesiones();
    if (isset($_SESSION["userfund"])) {
        echo 'Bienvenido ' . $_SESSION["userfund"];
    } else {
        header('location:vistas/login.php');
    }
?>