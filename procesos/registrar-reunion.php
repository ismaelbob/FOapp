<?php
    include "../includes/tarjeta.php";
    $tarjeta = new Tarjeta();

    if (isset($_POST["idparticipacion"])) {
        $idparticipacion = $_POST["idparticipacion"];
        $mes = $_POST["mes"];
        $valor = $_POST["valor"];

        $tarjeta -> registrarParticipacion($idparticipacion, $mes, $valor);

        $valorParaMostrar = "Asistió";
        if($valor === "f") {$valorParaMostrar = "No asistió";}

        echo "Reunion " . strtoupper($mes) . ": " . $valorParaMostrar;
    } else {
        echo "falta";
    }
?>