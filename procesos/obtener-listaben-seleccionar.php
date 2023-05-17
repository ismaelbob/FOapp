<?php
    include "../includes/beneficiario.php";
    $beneficiario = new Beneficiario();

    $resultado = $beneficiario -> todoBeneficiario();

    foreach ($resultado as $fila) {
        $nombres = $fila["nombres"] . " " . $fila["paterno"] . " " . $fila["materno"];
        echo "<div onclick='seleccionarItem(" . intval($fila["idbeneficiario"]) . ",\"" . $nombres . "\")' class='item'><div class='item-cod'>" . $fila["idbeneficiario"] . " " . "</div><div>" . $nombres . "</div></div>";
    }
?>