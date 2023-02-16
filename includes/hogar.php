<?php
    include_once "db.php";
    class Hogar extends DB{
        public function existeHogar($hog){
            $con = $this -> conectar() -> prepare("SELECT * FROM hogar WHERE nom_hogar=:h");
            $con -> execute(["h" => $hog]);

            if($con -> rowCount()){
                return true;
            }else{
                return false;
            }

            $con = null;
        }
        public function nuevoHogar($hog, $pad, $mad, $tel1, $tel2){
            $con = $this -> conectar() -> prepare("INSERT INTO hogar (nom_hogar,madre,padre,telefono_a,telefono_b,estado) VALUES (:h,:m,:p,:t1,:t2,:e)");
            $con -> execute(["h" => $hog, "m" => $mad, "p" => $pad, "t1" => $tel1, "t2" => $tel2,"e"=>"activo"]);
            $con = null;
        }
        public function todoHogar(){
            return $conn = $this->conectar()->query("SELECT * FROM hogar ORDER BY nom_hogar ASC");
        }
        public function obtenerDatosHogar($id){
            $con = $this -> conectar() -> query("SELECT * FROM hogar WHERE idhogar=" . $id);
            $datos = $con -> fetch(PDO::FETCH_OBJ);
            return $datos;
        }
        public function modificarHogar($hog, $pad, $mad, $tel1, $tel2, $id){
            $con = $this->conectar() -> prepare("UPDATE hogar SET nom_hogar=:n, madre=:m, padre=:p, telefono_a=:t1, telefono_b=:t2 WHERE idhogar=:i");
            $con -> execute(["n" => $hog, "m" => $mad, "p" => $pad, "t1" => $tel1, "t2" => $tel2, "i" => $id]);
            $con = null;
        }
        public function eliminarHogar($id){
            $con = $this->conectar() -> prepare("UPDATE hogar SET estado='inactivo' WHERE idhogar=:i");
            $con -> execute(["i" => $id]);
            $con = null;
        }
        public function obtenerNombreHogar($id){
            $con = $this -> conectar() -> query("SELECT nom_hogar FROM hogar WHERE idhogar=$id;");
            $datos = $con -> fetch(PDO::FETCH_OBJ) -> nom_hogar;
            return $datos;
        }
    }
?>