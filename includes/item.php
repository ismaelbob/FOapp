<?php
    include_once "db.php";
    class Item extends DB{
        function todoItem(){
            return $this -> conectar() -> query("SELECT * FROM item");
        }
        function obtenerDatoItem($i){
            $con = $this -> conectar() -> query("SELECT * FROM item WHERE iditem=" . $i);
            $datos = $con -> fetch(PDO::FETCH_OBJ) -> descripcion;
            return $datos;
        }
    }
?>