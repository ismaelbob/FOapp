<?php
    include "../includes/beneficiario.php";
    $ben = new Beneficiario();

    if(isset($_POST["cod"])){
        $cod = $_POST["cod"];   
        $respuesta = $ben -> obtenerDatosBenHogar($cod);
        echo json_encode($respuesta);
    }
?>