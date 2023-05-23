<?php
    include "../includes/beneficiario.php";
    $ben = new Beneficiario();

    if(isset($_POST["cod"])){
        $cod = $_POST["cod"];   
        $idhogar = $ben -> obtenerIdHogar($cod);
        if($idhogar <> "error") {
            $hijos = $ben -> hijosDeHogar($idhogar);
            $numeroDeHijos = $ben -> numeroHijosHogar($idhogar);
            $todoHogar = $ben -> obtenerDatosBenHogar($idhogar);

            $nombreHogar = $todoHogar[0][9];
            echo '<h4>DATOS</h4>';
            echo '<p><strong>Familia:</strong><span> ' . substr($nombreHogar, 0, stripos($nombreHogar, 'H')) . '</span></p>';
            echo '<p><strong>Nro. Hijos:</strong><span> ' . $numeroDeHijos . '</span></p>';
            echo '<p>';
            foreach($hijos as $hijo){
                echo '<strong>' . $hijo["idbeneficiario"] . ':</strong><span> ' . $hijo["nombres"] . '</span><br/>';
            }
            echo '</p>';
        } else {
            echo 'Codigo no registrado';
        }
    }
?>