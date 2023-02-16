<?php
    include 'includes/sesiones.php';
    $sesiones = new Sesiones();

    $usuarioActivo = $sesiones -> getSesion();
    
    if($usuarioActivo === '') {
        echo 'Bienvenido ' . $usuarioActivo;
        echo '<input type="button" value="Cerrar sesion"/>';
    } else {
        echo 'No hay sesion';
    }
?>
