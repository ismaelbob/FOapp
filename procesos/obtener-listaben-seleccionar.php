<?php
    include "../includes/beneficiario.php";
    $beneficiario = new Beneficiario();

    $resultado = $beneficiario -> todoBeneficiario();

    foreach ($resultado as $fila) {
        echo "<div onclick=seleccionarItem(" . intval($fila["idbeneficiario"]) .") class='item'><div class='item-cod'>" . $fila["idbeneficiario"] . " " . "</div><div>" . $fila["nombres"] . " " . $fila["paterno"] . " " . $fila["materno"] . "</div></div>";
    }
?>