<?php
    include_once "db.php";
    class Aporte extends DB{
        function aportesBeneficiario($ben, $gestion){
            $con = $this -> conectar() -> query("SELECT * FROM aporte WHERE idbeneficiario=$ben AND gestion=$gestion");
            if ($con -> rowCount() > 0) {
                $datos = $con -> fetch(PDO::FETCH_OBJ);
                return $datos;
            } else {
                return "Sin datos de aporte";
            }
            $con = null;
        }
        function registrarAporte($idaporte, $mes, $valor) {
            $this -> conectar() -> query("UPDATE aporte SET $mes='$valor' WHERE idaporte=$idaporte;");      
        }

        function cambiarAporteAnual($ben, $gestion, $valor) {
            $this -> conectar() -> query("UPDATE aporte SET ene='$valor', feb='$valor', mar='$valor', abr='$valor', may='$valor', jun='$valor', jul='$valor', ago='$valor', sep='$valor', oct='$valor', nov='$valor', dic='$valor' WHERE idbeneficiario=$ben AND gestion=$gestion;");
        }
    }
?>