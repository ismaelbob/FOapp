<?php
    include_once "db.php";
    class Cobro extends DB{
        function crearNuevoCobro($ben, $gestion){
            $con = $this -> conectar() -> prepare("INSERT INTO cobro (idbeneficiario,gestion,enero,febrero,marzo,abril,mayo,junio,julio,agosto,septiembre,octubre,noviembre,diciembre) VALUES (:b,:g,:m1,:m2,:m3,:m4,:m5,:m6,:m7,:m8,:m9,:m10,:m11,:m12);");
            $con -> execute(["b" => $ben, "g" => $gestion, "m1" => "f", "m2" => "f", "m3" => "f", "m4" => "f", "m5" => "f", "m6" => "f", "m7" => "f", "m8" => "f", "m9" => "f", "m10" => "f", "m11" => "f", "m12" => "f"]);
            $con = null;
        }
        function eliminarCobro($ben, $gestion){
            $con = $this -> conectar() -> prepare("DELETE FROM cobro WHERE idbeneficiario=:ben AND gestion=:ges");
            $con -> execute(["ben" => $ben, "ges" => $gestion]);
            $con = null;
        }
        function modificarCobro($ben, $gestion, $mes,$estado){
            $con = $this -> conectar() -> prepare("UPDATE cobro SET $mes=:est WHERE idbeneficiario=:ben AND gestion=:ges");
            $con -> execute(["est" => $estado, "ben" => $ben, "ges" => $gestion]);
            $con = null;
        }
    }
?>