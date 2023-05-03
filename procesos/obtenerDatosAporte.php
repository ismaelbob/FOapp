<?php
    include "../includes/aporte.php";
    $aporte = new Aporte();

    if(isset($_POST["cod"])){
        $cod = $_POST["cod"];
        $ges = 2023;
        
        $respuesta = $aporte -> aportesBeneficiario($cod, $ges);

        if ($respuesta <> "Sin datos de aporte") {
            echo json_encode($respuesta);
        } else {
            echo $respuesta;
        }
    }else{
        echo "error";
    }
?>