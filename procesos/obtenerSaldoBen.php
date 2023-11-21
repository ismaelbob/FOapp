<?php
    include "../includes/vales.php";
    $vales = new Vales();

    $ben = $_POST["ben"];

    $saldo = $vales -> obtenerSaldo($ben);
    echo $saldo;
?>