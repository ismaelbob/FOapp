<?php
    include "../includes/beneficiario.php";
    $ben = new Beneficiario();

    $hog = $_POST["idhogar"];

    $cantidad = $ben -> numeroHijosHogar($hog);
    echo $cantidad;
?>