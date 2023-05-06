<?php
    include_once "db.php";
    class Tarjeta extends DB {
        public function participaciones($idhogar, $gestion) {
            $con = $this -> conectar() -> query("SELECT * FROM tarjeta WHERE idhogar=$idhogar AND gestion=$gestion;");
            if ($con -> rowCount() > 0) {
                $datos = $con -> fetch(PDO::FETCH_OBJ);
                return $datos;
            } else {
                return "Sin datos de tarjeta";
            }
            $con = null;
        }
        function registrarParticipacion($idparticipacion, $mes, $valor) {
            $this -> conectar() -> query("UPDATE tarjeta SET $mes='$valor' WHERE idtarjeta=$idparticipacion;");          
        }
    }
?>