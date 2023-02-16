<?php
    include_once "db.php";
    class Beneficio extends DB{
        function registrarBeneficio($cod, $tipo, $fecha, $gestion){
            $con = $this -> conectar() -> prepare("INSERT INTO beneficio (idbeneficiario, tipo, fecha, gestion) VALUES (:id,:ti, :fe, :ge);");
            $con -> execute(["id" => $cod,"ti" => $tipo, "fe" => $fecha, "ge" => $gestion]);
            $con = null;
        }
        function ultimoBeneficio($ben){
            $con = $this -> conectar() -> query("SELECT idbeneficio AS ultimo FROM beneficio WHERE idbeneficiario=$ben ORDER BY idbeneficio DESC LIMIT 1");
            $ultimo = $con -> fetch(PDO::FETCH_OBJ)->ultimo;
            return $ultimo;
        }
        function mostrarTodoBeneficioBen($ben, $gestion){
            return $con = $this -> conectar() -> query("SELECT * FROM beneficio b JOIN recibo_beneficio r ON b.idbeneficio=r.idbeneficio JOIN item t ON t.iditem=b.tipo WHERE b.idbeneficiario=$ben AND b.gestion = $gestion AND r.estado='entregado'");
        }
    }
?>