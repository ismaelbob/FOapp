<?php
    include 'includes/sesiones.php';
    $sesiones = new Sesiones();

    print_r($_SESSION);
    if(isset($_SESSION["userfund"])) {
        header('location: tarjeta.php');
    } else {
        header('Location: vistas/login.php');
    }
?>
