<?php
    include "../includes/aporte.php";
    $aporte = new Aporte();

    if(isset($_POST["cod"])){
        $cod = $_POST["cod"];
        $ges = $_POST["ges"];
        
        echo json_encode($aporte -> aportesBeneficiario($cod, $ges));
    }else{
        echo "error";
    }
?>