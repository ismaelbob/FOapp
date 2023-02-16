<?php
    include_once "db.php";
    class Multa extends DB{
        function registrarMulta($ben, $mon, $actividad, $mes, $anio, $fecha){
            $con = $this -> conectar() -> prepare("INSERT INTO multa (idbeneficiario, monto, idactividad, mes, anio, fecha) VALUES (:be, :mo, :ac, :me, :an, :fe);");
            $con -> execute(["be"=>$ben, "mo"=>$mon, "ac"=>$actividad, "me"=>$mes, "an"=>$anio, "fe"=> $fecha]);
            $con = null;
        }
        function modificarMulta($ben, $mon, $actividad, $mes, $anio, $fecha, $id){
            $con = $this -> conectar() -> prepare("UPDATE multa SET idbeneficiario=:be, monto=:mo, idactividad=:ac, mes=:me, anio=:an, fecha=:fe WHERE idmulta=:id;");
            $con -> execute(["be"=>$ben, "mo"=>$mon, "ac"=>$actividad, "me"=>$mes, "an"=>$anio, "fe"=> $fecha, "id"=>$id]);
            $con = null;
        }
        function eliminarAporte($id){
            $con = $this -> conectar() -> prepare("DELETE FROM multa WHERE idmulta=:id");
            $con -> execute(["id"=>$id]);
            $con = null;
        }
        function aportesBeneficiario($id){
            $con = $this -> conectar() -> prepare("SELECT * FROM multa WHERE idbeneficiario=:id");
            $con -> execute(["id"=>$id]);
            $datos = $con -> fetch(PDO::FETCH_OBJ);
            return $datos;
        }
        function ultimaMulta($ben){
            $con = $this -> conectar() -> query("SELECT idmulta AS ultimo FROM multa WHERE idbeneficiario=$ben ORDER BY idmulta DESC LIMIT 1");
            $ultimo = $con -> fetch(PDO::FETCH_OBJ)->ultimo;
            return $ultimo;
        }
    }
?>