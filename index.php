<?php
    include 'includes/sesiones.php';
    $sesiones = new Sesiones();

    print_r($_SESSION);
    if(isset($_SESSION["userfund"])) {
        header('location: tarjeta.php');
    } else {
        header('location: vistas/login.php');
    }

    // include 'includes/sesiones.php';
    // $sesiones = new Sesiones();

    // $usuario = $_SESSION["userfund"];
    
    // if($usuario === '') {
    //     echo '<a href="vistas/login.php">Iniciar sesion</a>';
    // } else {
    //     header('location: tarjeta.php');
    // }
?>
