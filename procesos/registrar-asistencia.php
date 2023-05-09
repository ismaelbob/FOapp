<?php
    include "../includes/tarjeta.php";
    include "../includes/beneficiario.php";
    $tarjeta = new Tarjeta();
    $Beneficiario = new Beneficiario();

    if (isset($_POST["cod"])) {
        $codigo = $_POST["cod"];
        $mes = $_POST["mes"];
        $valor = "p";

        $idhogar = $Beneficiario -> obtenerIdHogar($codigo);
        if ($idhogar <> "error") {
            $tarjeta -> registrarParticipacion($idhogar, $mes, $valor);
            echo "Se registro asistencia";
        } else {
            echo "Codigo no registrado";
        }

        


    } else {
        echo "falta";
    }
?>