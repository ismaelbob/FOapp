<?php
    include "../includes/recregalo.php";
    $recibo = new ReciboRegalo();

    if(isset($_POST["idrecibo"])){
        $rec = $_POST["idrecibo"];

        $recibo -> eliminarReciboRegalo($rec);
        echo "correcto";
    }else{
        echo "error";
    }
?>