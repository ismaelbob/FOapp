<?php
    include_once "db.php";
    class Aporte extends DB{
        function registrarAporte($ben, $meses, $monto, $gestion, $fecha){
            $con = $this -> conectar() -> prepare("INSERT INTO aporte (idbeneficiario, meses, monto, gestion, fecha) VALUES (:ben, :me, :mo, :ge, :fe);");
            $con -> execute(["ben" => $ben, "me" => $meses, "mo" => $monto, "ge" => $gestion, "fe" => $fecha]);
            $con = null;
        }
        function eliminarAporte($id){
            $con = $this -> conectar() -> prepare("DELETE FROM aporte WHERE idaporte=:id");
            $con -> execute(["id"=>$id]);
            $con = null;
        }
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
        function ultimoAporte($ben){
            $con = $this -> conectar() -> query("SELECT idaporte AS ultimo FROM aporte WHERE idbeneficiario=$ben ORDER BY idaporte DESC LIMIT 1");
            $ultimo = $con -> fetch(PDO::FETCH_OBJ)->ultimo;
            return $ultimo;
        }
    }
?>