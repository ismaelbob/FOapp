<?php
    include_once '../includes/usuario.php';
    include_once '../includes/sesiones.php';
    $usuario = new Usuario();
    $sesiones = new Sesiones();

    if(isset($_POST["txtusuario"])) {
        $usu = $_POST["txtusuario"];
        $pas = $_POST["txtpassword"];
    
        $respuesta = $usuario -> iniciarSesion($usu, $pas);

        if($respuesta) {
            $sesiones -> setSesion($usu);
            header('location:../tarjeta.php');
        } else {
            header('location:../vistas/login.php');
        }
    }
?>