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
    }
?>