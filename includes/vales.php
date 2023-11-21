<?php
    include_once "db.php";
    class Vales extends DB {
        public function obtenerSaldo($ben) {
            $con = $this -> conectar() -> query("SELECT saldo FROM vales WHERE codigo=$ben");
            $cuenta ="";
            if ($con-> rowCount() > 0) {
                $cuenta = $con -> fetch(PDO::FETCH_OBJ)->saldo;
            } else {
                $cuenta = "vacio";
            }
            return $cuenta;
        }
    }
?>