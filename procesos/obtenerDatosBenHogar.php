<?php
    include "../includes/beneficiario.php";
    $ben = new Beneficiario();

    if(isset($_POST["cod"])){
        $cod = $_POST["cod"];   
        $idhogar = $ben -> obtenerIdHogar($cod);
        if($idhogar <> '') {
            $respuesta = $ben -> obtenerDatosBenHogar($idhogar);
            echo json_encode($respuesta);
        } else {
            echo 'error';
        }
    }
?>