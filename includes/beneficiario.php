<?php
    include_once "db.php";
    class Beneficiario Extends DB{
        private $codigo;
        private $paterno;
        private $materno;
        private $nombres;
        private $sexo;
        private $fnacimiento;
        private $hogar;

        public function nuevoBeneficiario($cod, $pat, $mat, $nom, $sex, $nac, $hog){
            $con = $this->conectar()->prepare("INSERT INTO beneficiario (idbeneficiario, paterno, materno, nombres, sexo, fnacimiento, hogar,estado) VALUES (:i,:p,:m,:n,:s,:f,:h,:e);");
            $con->execute(["i"=>$cod, "p"=>$pat, "m"=>$mat, "n"=>$nom, "s"=>$sex, "f"=>$nac, "h"=>$hog, "e"=>"activo"]);
            $con = null;
        }
        public function existeBeneficiario($cod){
            $con = $this->conectar()->prepare("SELECT * FROM beneficiario WHERE idbeneficiario=:ben");
            $con->execute(["ben"=>$cod]);
            if($con->rowCount()){
                return true;
            }else{
                return false;
            }
            $con = null;
        }
        public function todoBeneficiario(){
            return $con = $this->conectar()->query("SELECT * FROM beneficiario ORDER BY idbeneficiario ASC");
        }
        public function obtenerDatosBen($c){
            $con = $this->conectar()->query("SELECT * FROM beneficiario b JOIN hogar h ON b.hogar = h.idhogar WHERE b.idbeneficiario=$c;");
            $datos = $con -> fetch(PDO::FETCH_OBJ);
            return $datos;
        }
        public function obtenerIdHogar($cod){
            $con = $this -> conectar() -> query("SELECT hogar FROM beneficiario WHERE idbeneficiario=$cod");
            $idhogar = $con -> fetch(PDO::FETCH_OBJ)->hogar;
            return $idhogar;
        }
        public function obtenerNombresBen($c){
            return $con = $this->conectar()->query("SELECT * FROM beneficiario WHERE idbeneficiario=$c;"); 
        }
        public function modificarBeneficiario($cod, $pat, $mat, $nom, $sex, $nac, $hog){
            $con = $this->conectar()->prepare("UPDATE beneficiario SET paterno=:p, materno=:m, nombres=:n, sexo=:s, fnacimiento=:f, hogar=:h WHERE idbeneficiario=:c");
            $con -> execute(["p"=>$pat, "m"=>$mat, "n"=>$nom, "s"=>$sex, "f"=>$nac, "h"=>$hog, "c"=>$cod]);
            $con = null;
        }
        public function eliminarBeneficiario($cod){
            $con = $this->conectar()->prepare("UPDATE beneficiario SET estado='inactivo' WHERE idbeneficiario=:c");
            $con -> execute(["c"=>$cod]);
            $con = null;
        }

        public function obtenerDatosBenHogar($c){
            $con = $this->conectar()->query("SELECT * FROM beneficiario b JOIN hogar h ON b.hogar=h.idhogar WHERE h.idhogar=" . $c);
            $datos = $con -> fetchAll();
            return $datos;
        }
        public function obtenerDatosBenHogarPPFF($cod, $hog){
            $con = $this->conectar()->query("SELECT * FROM beneficiario b JOIN hogar h ON b.hogar=h.idhogar WHERE b.idbeneficiario=$cod AND h.idhogar=$hog");
            $datos = $con -> fetch(PDO::FETCH_OBJ);
            return $datos;
        }

        public function buscarBeneficiario($ben){
            return $con = $this -> conectar() -> query("SELECT * FROM beneficiario WHERE (idbeneficiario LIKE('%$ben') OR nombres LIKE('$ben%') OR paterno LIKE('$ben%') OR materno LIKE('$ben%')) AND estado='activo';");
        }
        public function numeroHijosHogar($hog){
            $con = $this -> conectar() -> query("SELECT COUNT(b.idbeneficiario) AS cantidad FROM beneficiario b JOIN hogar h ON b.hogar = h.idhogar WHERE h.idhogar=$hog");
            $cantidad = $con -> fetch(PDO::FETCH_OBJ)->cantidad;
            return $cantidad;
        }
    }
?>