<?php
    include_once 'db.php';
    class Usuario extends DB {
        private $id;
        private $usuario;
        private $nivel;

        public function setUsuario($id, $usuario, $nivel){
            $this -> $id = $id;
            $this -> $usuario = $usuario;
            $this -> $nivel = $nivel;
        }
        
        
        public function iniciarSesion($usuario, $pass){
            $passMD5 = md5($pass);
            $con = $this -> conectar() -> prepare('SELECT * FROM usuario WHERE nom_usuario=:usu AND pass=:pas');
            $con -> execute(["usu" => $usuario, "pas" => $passMD5]);
            if($con -> rowCount()) {
                print_r($con);
                return true;
            } else {
                return false;
            }
            $con = null;
        }
    }
?>