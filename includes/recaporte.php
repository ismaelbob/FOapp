<?php
    include_once "db.php";
    class RecAporte extends DB{
        function registrarRecAporte($apo, $usuario){
            $con = $this -> conectar() -> prepare("INSERT INTO recibo_aporte (idaporte, estado, usuario) VALUES(:ap, :es, :usu);");
            $con -> execute(["ap" => $apo, "es" => "recibido", "usu" => $usuario]);
            $con = null;
        }
        function anularRecAporte($rec){
            $con = $this -> conectar() -> prepare("UPDATE recibo_aporte SET estado=:est WHERE idrecibo=:id");
            $con -> execute(["est" => "anulado", "id" => $rec]);
            $con = null;
        }
        function datosReciboAporte($ben){
            $con = $this -> conectar() -> query("SELECT r.idrecibo,a.idaporte,a.idbeneficiario,b.nombres,b.paterno,b.materno,a.meses,a.fecha,a.monto,a.gestion FROM aporte a JOIN beneficiario b ON a.idbeneficiario=b.idbeneficiario JOIN recibo_aporte r ON r.idaporte=a.idaporte WHERE a.idbeneficiario=$ben ORDER BY a.idaporte DESC LIMIT 1");
            $datos = $con -> fetch(PDO::FETCH_OBJ);
            return $datos;
        }
        function buscarDatosRecibo($rec){
            $con = $this -> conectar() -> query("SELECT r.idrecibo,a.idaporte,a.idbeneficiario,b.nombres,b.paterno,b.materno,a.meses,a.fecha,a.monto,a.gestion FROM aporte a JOIN beneficiario b ON a.idbeneficiario=b.idbeneficiario JOIN recibo_aporte r ON r.idaporte=a.idaporte WHERE r.idrecibo=$rec");
            $datos = $con -> fetch(PDO::FETCH_OBJ);
            return $datos;
        }
        /**
         * @param int $ben id de beneficiario
         * @param int $gestion Gestion de la que se pagara
         */
        function mostrarTodoAporteBen($ben, $gestion){
            return $con = $this -> conectar() -> query("SELECT a.idaporte, a.idbeneficiario, a.meses, a.monto, a.gestion, a.fecha, r.idrecibo, r.estado, r.usuario FROM aporte a JOIN recibo_aporte r ON a.idaporte=r.idaporte WHERE idbeneficiario=$ben AND gestion=$gestion AND r.estado='recibido';");
        }
        function ultimoReciboBen($ultimoAporte){
            $con = $this -> conectar() -> query("SELECT idrecibo AS ultimo FROM recibo_aporte WHERE idaporte=$ultimoAporte ORDER BY idaporte DESC LIMIT 1");
            $ultimo = $con -> fetch(PDO::FETCH_OBJ)->ultimo;
            return $ultimo;
        }
    }
?>