<?php
    include "../includes/tarjeta.php";
    $tarjeta = new Tarjeta();

    if(isset($_POST["cod"])){
        $ben = $_POST["cod"];
        $ges = $_POST["ges"];

        echo json_encode($tarjeta -> obtenerDatosTarjeta($ben, $ges));
    }else{
        echo "error";
    }
?>