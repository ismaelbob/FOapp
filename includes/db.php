<?php
    class DB{
        private $servidor;
        private $usuario;
        private $pass;
        private $database;
        private $charset;

        public function __construct(){
            $this->servidor = "localhost";
            $this->usuario = "root";
            $this->pass = "";
            $this->database = "fundacion";
            $this->charset = "utf8mb4";
        }

        public function conectar(){
            try{
                $conectador = "mysql:host=" . $this->servidor . ";dbname=" . $this->database . ";charset=" . $this->charset;
                $opciones=[PDO::ATTR_ERRMODE=>PDO::ERRMODE_EXCEPTION, PDO::ATTR_EMULATE_PREPARES=>false];
                $pdo=new PDO($conectador, $this->usuario, $this->pass, $opciones);
                return $pdo;
            }catch(PDOException $e){
                print_r("Error en la conexion" . $e->getMessage());
            }
        }
    }
?>