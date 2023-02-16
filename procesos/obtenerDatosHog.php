<?php
    include "../includes/hogar.php";
    $hog = new Hogar();
    $id = $_POST["txtidhogar"];
    echo json_encode($hog -> obtenerDatosHogar($id));
?>