<?php
    include "../includes/beneficiario.php";
    $ben = new Beneficiario();

    if(isset($_POST["cod"])){
        $cod = $_POST["cod"];   
        if($ben -> existeBeneficiario($cod)){
            echo json_encode($ben -> obtenerDatosBenHogar($cod));
        }else{
            echo "No existe el codigo ingresado";
        }
    }else{
        echo "error";
    }
?>