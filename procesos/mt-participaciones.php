<?php
    include '../includes/beneficiario.php';
    include "../includes/tarjeta.php";
    $beneficiario = new Beneficiario();
    $tarjeta = new Tarjeta();

    if (isset($_POST["cod"])) {
        $cod = $_POST["cod"];
        $ges = 2023;
        $idhogar = $beneficiario -> obtenerIdHogar($cod);

        $consulta = $tarjeta -> participaciones($idhogar, $ges);

        echo '<h4>Reuniones</h4>';
        echo   '<div class="fila">
                    <span '; if($consulta -> r1 === 'p') { echo 'class="cumplido"';} echo '>2 Enero</span>
                    <span '; if($consulta -> r2 === 'p') { echo 'class="cumplido"';} echo '>6 Febrero</span>
                    <span '; if($consulta -> r3 === 'p') { echo 'class="cumplido"';} echo '>6 Marzo</span>
                    <span '; if($consulta -> r4 === 'p') { echo 'class="cumplido"';} echo '>3 Abril</span>
                    <span '; if($consulta -> r5 === 'p') { echo 'class="cumplido"';} echo '>8 Mayo</span>
                    <span '; if($consulta -> r6 === 'p') { echo 'class="cumplido"';} echo '>5 Junio</span>
                    <span '; if($consulta -> r7 === 'p') { echo 'class="cumplido"';} echo '>3 Julio</span>
                    <span '; if($consulta -> r8 === 'p') { echo 'class="cumplido"';} echo '>7 Agosto</span>
                    <span '; if($consulta -> r9 === 'p') { echo 'class="cumplido"';} echo '>4 Septiembre</span>
                    <span '; if($consulta -> r10 === 'p') { echo 'class="cumplido"';} echo '>2 Octubre</span>
                    <span '; if($consulta -> r11 === 'p') { echo 'class="cumplido"';} echo '>6 Noviembre</span>
                    <span '; if($consulta -> r12 === 'p') { echo 'class="cumplido"';} echo '>4 Diciembre</span>
                </div>';
        
        
        echo '<div class="fila">
                <div>
                    <h4>Revisones medicas</h4>
                    <div class="fila">
                        <span '; if($consulta -> r1 === 'rm1') { echo 'class="cumplido"';} echo '>Hijo 1</span>
                        <span '; if($consulta -> r1 === 'rm2') { echo 'class="cumplido"';} echo '>Hijo 2</span>
                        <span '; if($consulta -> r1 === 'rm3') { echo 'class="cumplido"';} echo '>Hijo 3</span>
                    </div>
                </div>
                <div>
                    <h4>Kermesse</h4>
                    <div class="fila">
                        <span '; if($consulta -> r1 === 'k1') { echo 'class="cumplido"';} echo '>hijo 1</span>
                        <span '; if($consulta -> r1 === 'k2') { echo 'class="cumplido"';} echo '>Hijo 2</span>
                        <span '; if($consulta -> r1 === 'k3') { echo 'class="cumplido"';} echo '>Hijo 3</span>
                    </div>
                </div>
            </div>';
    }
?>