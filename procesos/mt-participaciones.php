<?php
    include '../includes/beneficiario.php';
    include "../includes/tarjeta.php";
    include '../includes/aporte.php';
    $beneficiario = new Beneficiario();
    $tarjeta = new Tarjeta();
    $aporte = new Aporte();

    if (isset($_POST["cod"])) {
        $cod = $_POST["cod"];
        $ges = 2023;
        $idhogar = $beneficiario -> obtenerIdHogar($cod);

        $consulta = $tarjeta -> participaciones($idhogar, $ges);
        $hijos = $beneficiario -> hijosDeHogar($idhogar);

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
        echo '<h4>Aportes</h4>';
        foreach ($hijos as $hijo) {
            $ben = $hijo["idbeneficiario"];
            $apo = $aporte -> aportesBeneficiario($ben, $ges);
            echo '<h5>' . $hijo["nombres"] . '</h5>';
            echo '<div class="fila">
                    <span '; if($apo -> ene === 'p') { echo 'class="cumplido"';} echo '>Enero</span>
                    <span '; if($apo -> feb === 'p') { echo 'class="cumplido"';} echo '>Febrero</span>
                    <span '; if($apo -> mar === 'p') { echo 'class="cumplido"';} echo '>Marzo</span>
                    <span '; if($apo -> abr === 'p') { echo 'class="cumplido"';} echo '>Abril</span>
                    <span '; if($apo -> may === 'p') { echo 'class="cumplido"';} echo '>Mayo</span>
                    <span '; if($apo -> jun === 'p') { echo 'class="cumplido"';} echo '>Junio</span>
                    <span '; if($apo -> jul === 'p') { echo 'class="cumplido"';} echo '>Julio</span>
                    <span '; if($apo -> ago === 'p') { echo 'class="cumplido"';} echo '>Agosto</span>
                    <span '; if($apo -> sep === 'p') { echo 'class="cumplido"';} echo '>Septiembre</span>
                    <span '; if($apo -> oct === 'p') { echo 'class="cumplido"';} echo '>Octubre</span>
                    <span '; if($apo -> nov === 'p') { echo 'class="cumplido"';} echo '>Noviembre</span>
                    <span '; if($apo -> dic === 'p') { echo 'class="cumplido"';} echo '>Diciembre</span>
                </div>';
        }
        
        echo '<div class="fila">
                <div>
                    <h4>Revisones medicas</h4>
                    <div class="fila">
                        <span '; if($consulta -> rm1 === 'p') { echo 'class="cumplido"';} echo '>Hijo 1</span>
                        <span '; if($consulta -> rm2 === 'p') { echo 'class="cumplido"';} echo '>Hijo 2</span>
                        <span '; if($consulta -> rm3 === 'p') { echo 'class="cumplido"';} echo '>Hijo 3</span>
                    </div>
                </div>
                <div>
                    <h4>Kermesse</h4>
                    <div class="fila">
                        <span '; if($consulta -> k1 === 'p') { echo 'class="cumplido"';} echo '>hijo 1</span>
                        <span '; if($consulta -> k2 === 'p') { echo 'class="cumplido"';} echo '>Hijo 2</span>
                        <span '; if($consulta -> k3 === 'p') { echo 'class="cumplido"';} echo '>Hijo 3</span>
                    </div>
                </div>
            </div>';
    }
?>