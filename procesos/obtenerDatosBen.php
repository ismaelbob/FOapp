<?php
    include "../includes/beneficiario.php";
    $ben = new Beneficiario();
    $cod = $_POST["txtcodigo"];
    echo json_encode($ben -> obtenerDatosBen($cod));
?>