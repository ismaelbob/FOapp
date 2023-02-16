<?php
    include "../includes/recbeneficio.php";
    $recibo = new ReciboBeneficio();
    if(isset($_POST["idrecibo"])){
        $rec = $_POST["idrecibo"];

        $recibo -> eliminarReciboBeneficio($rec);
        echo "correcto";
    }else{
        echo "error";
    }

?>