<?php
    class Sesiones{
        public function __construct(){
            session_start();
        }
        public function setSesion($usu){
            $_SESSION["userfund"] = $usu;
        }
        public function getSesion(){
            return $_SESSION["userfund"];
        }
        public function cerrarSesion(){
            session_unset();
            session_destroy();

        }
    }
?>