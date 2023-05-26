<?php
    include '../includes/aporte.php';
    $aporte = new Aporte();
    if(isset($_POST["cod"])) {
        $cod = $_POST["cod"];
        $valor = $_POST["valor"];
        $gestion = 2023;

        $aporte -> cambiarAporteAnual($cod, $gestion, $valor);
        echo 'Correcto';
    } else {
        echo 'Sin datos necesarios para actualizar';
    }
?>