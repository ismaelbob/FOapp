<?php
    include "../includes/item.php";
    $item = new Item();

    if(isset($_POST["item"])){
        $it = $_POST["item"];
        echo json_encode($item -> obtenerDatoItem($it));
    }else{
        echo "error";
    }
?>