<?php
    include '../includes/beneficiario.php';
    $beneficiario = new Beneficiario();

    if (isset($_POST["buscar"])) {
        $buscar = $_POST["buscar"];
        $resultado = $beneficiario -> buscarBeneficiario($buscar);

        foreach ($resultado as $fila) {
            echo $fila["idbeneficiario"] . $fila["nombres"] . ' | ';
        }
    } else {
        echo 'error';
    }
?>