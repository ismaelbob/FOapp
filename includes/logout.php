<?php
    include_once "sesiones.php";
    $sesion = new Sesiones();
    $sesion -> cerrarSesion();

    header("location:../index.php")
?>