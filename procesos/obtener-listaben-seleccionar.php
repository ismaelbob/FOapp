<?php
    include "../includes/beneficiario.php";
    $beneficiario = new Beneficiario();

    $resultado = $beneficiario -> todoBeneficiario();

    foreach ($resultado as $fila) {
        echo $fila["nombres"];
    }
?>