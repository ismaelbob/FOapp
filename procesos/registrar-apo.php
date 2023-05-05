<?php
    include "../includes/aporte.php";
    $aporte = new Aporte();

    if (isset($_POST["idaporte"])) {
        $idaporte = $_POST["idaporte"];
        $mes = $_POST["mes"];
        $valor = $_POST["valor"];

        $aporte -> registrarAporte($idaporte, $mes, $valor);

        $valorParaMostrar = "Pagado";
        if($valor === "f") {$valorParaMostrar = "No pagado";}

        echo "Aporte " . strtoupper($mes) . ": " . $valorParaMostrar;
    } else {
        echo "falta";
    }
?>