<?php
    include "../includes/hogar.php";
    $hogar = new Hogar();

    if(isset($_POST["txtidhogar"])){
        $id = $_POST["txtidhogar"];
        $datos = $hogar -> obtenerDatosHogar($id);
        $hogar -> eliminarHogar($id);
        echo $datos->nom_hogar;
    }else{
        echo "error";
    }
?>