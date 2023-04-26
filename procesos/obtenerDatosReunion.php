<?php
    include "../includes/tarjeta.php";
    include "../includes/beneficiario.php";
    $tarjeta = new Tarjeta();
    $beneficiario = new Beneficiario();

    if(isset($_POST["cod"])){
        $ben = $_POST["cod"];
        $ges = 2023;

        $idhogar = $beneficiario -> obtenerIdHogar($ben);
        $consulta = $tarjeta -> participaciones($idhogar, $ges);
        if ($consulta <> 'sin datos de tarjeta') {
            echo json_encode($tarjeta -> participaciones($idhogar, $ges));
        } else {
            echo $consulta;
        }
    }else{
        echo "error";
    }
?>