<?php
    include "../includes/beneficiario.php";
    include "../includes/tarjeta.php";
    $ben = new Beneficiario();
    $tarjeta = new Tarjeta();

    if(isset($_POST["txtcodigo"])){
        $cod = $_POST["txtcodigo"];
        $datos = $ben -> obtenerDatosBen($cod);
        $ben -> eliminarBeneficiario($cod);

        $tarjeta -> eliminarTarjeta($cod);
        echo $datos->nombres;
    }
?>