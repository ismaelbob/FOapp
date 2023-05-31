<?php
    include_once 'includes/sesiones.php';
    $sesiones = new Sesiones();
    if (isset($_SESSION["userfund"])) {
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mi Tarjeta | FO</title>
    <link rel="stylesheet" href="css/menu.css">
    <link rel="stylesheet" href="css/secciones.css">
    <link rel="stylesheet" href="css/popup.css">
    <link rel="stylesheet" href="css/asistencia.css">
    <link rel="stylesheet" href="librerias/alertifyjs/css/alertify.css">
    <link rel="stylesheet" href="librerias/alertifyjs/css/themes/default.css">
    <script src="librerias/jquery-3.4.1.min.js"></script>
    <script src="librerias/alertifyjs/alertify.js"></script>
</head>
<body>
    <header>
        <nav>
            <ul>
                <li><a href="tarjeta.php" class="active">Mi tarjeta</a></li>
                <li><a href="asistencia.php">Asistencia</a></li>
                <div class="dropdown">
                    <button class="dropbtn"><?php echo $_SESSION["userfund"] ?></button>
                    <div class="dropdown-content">
                        <a href="#">Cuenta</a>
                        <a href="includes/logout.php">Salir</a>
                    </div>
                </div>
            </ul>
        </nav>
    </header>
    <div class="container">
        <div class="pnl_principal">
            <div class="pnl_datos">
                <h4>Datos</h4>
                <form id="form-buscar">
                    <div>
                        <input type="number" name="txtcodigo" id="txtcodigo"/>
                        <i id="btn-buscar" class="btn-popup">...</i>
                    </div>
                    <input id="btnbuscar" type="submit" value="Buscar">
                </form>
                <div>
                    <p>
                        <div class="linea"><h5>ID de familia:</h5><span id="idhogar"></span></div>
                        <div class="linea"><h5>Padre:</h5><span id="padre"></span></div>
                        <div class="linea"><h5>Madre:</h5><span id="madre"></span></div>
                    </p>
                    <p>
                        <div class="linea"><h5>Hijos inscritos:</h5><span id="cantidad"></span></div>
                        <div class="linea"><h3 id="cod1">Hijo 1:</h3><span id="hijo1"></span></div>
                        <div class="linea"><h3 id="cod2">Hijo 2:</h3><span id="hijo2"></span></div>
                        <div class="linea"><h3 id="cod3">Hijo 3:</h3><span id="hijo3"></span></div>
                    </p>
                    <p>
                        <div class="linea"><h5>Telefono 1:</h5><span id="tel1"></span></div>
                        <div class="linea"><h5>Telefono 2:</h5><span id="tel2"></span></div>
                        <div class="linea"><h5>Barrio:</h5><span></span></div>
                    </p>
                </div>
                <div class="linea-r"><button class="btn-edit">Editar</button></div>
            </div>
            <div class="pnl_tarjeta">
                <h4>Mi Tarjeta</h4>
                <div class="fila-titulo">
                    <h5>Reuniones</h5>
                    <div class="fila-reuniones"><label for="chkfull-reu">Marcar todo</label><input type="checkbox" id="chkfull-reu" name="chkfull-reu"/></div>
                </div>
                <div class="fila">
                    <div>
                        <label for="chkreunion-1">E</label>
                        <label for="chkreunion-2">F</label>
                        <label for="chkreunion-3">M</label>
                        <label for="chkreunion-4">A</label>
                        <label for="chkreunion-5">M</label>
                        <label for="chkreunion-6">J</label>
                        <label for="chkreunion-7">J</label>
                        <label for="chkreunion-8">A</label>
                        <label for="chkreunion-9">S</label>
                        <label for="chkreunion-10">O</label>
                        <label for="chkreunion-11">N</label>
                        <label for="chkreunion-12">D</label>
                    </div>
                    <div class="fila-reuniones">
                        <input value="r1" type="checkbox" name="chkreunion-1" id="chkreunion-1"/>
                        <input value="r2" type="checkbox" name="chkreunion-2" id="chkreunion-2"/>
                        <input value="r3" type="checkbox" name="chkreunion-3" id="chkreunion-3"/>
                        <input value="r4" type="checkbox" name="chkreunion-4" id="chkreunion-4"/>
                        <input value="r5" type="checkbox" name="chkreunion-5" id="chkreunion-5"/>
                        <input value="r6" type="checkbox" name="chkreunion-6" id="chkreunion-6"/>
                        <input value="r7" type="checkbox" name="chkreunion-7" id="chkreunion-7"/>
                        <input value="r8" type="checkbox" name="chkreunion-8" id="chkreunion-8"/>
                        <input value="r9" type="checkbox" name="chkreunion-9" id="chkreunion-9"/>
                        <input value="r10" type="checkbox" name="chkreunion-10" id="chkreunion-10"/>
                        <input value="r11" type="checkbox" name="chkreunion-11" id="chkreunion-11"/>
                        <input value="r12" type="checkbox" name="chkreunion-12" id="chkreunion-12"/>
                    </div>
                </div>
                <h5>Aportes</h5>
                <div class="fila-titulo fila-hijo1">
                    <h3 id="fila-apo-hijo1">Hijo 1</h3>
                    <div class="fila-apo1"><label for="chkfull-hijo1">Marcar todo</label><input type="checkbox" id="chkfull-hijo1" name="chkfull-hijo1"/></div>
                </div>
                <div class="fila fila-hijo1">
                    <div>
                        <label for="chkapo1-1">E</label>
                        <label for="chkapo1-2">F</label>
                        <label for="chkapo1-3">M</label>
                        <label for="chkapo1-4">A</label>
                        <label for="chkapo1-5">M</label>
                        <label for="chkapo1-6">J</label>
                        <label for="chkapo1-7">J</label>
                        <label for="chkapo1-8">A</label>
                        <label for="chkapo1-9">S</label>
                        <label for="chkapo1-10">O</label>
                        <label for="chkapo1-11">N</label>
                        <label for="chkapo1-12">D</label>
                    </div>
                    <div class="fila-apo1" id="fila-apo1">
                        <input value="ene" type="checkbox" name="chkapo1-1" id="chkapo1-1"/>
                        <input value="feb" type="checkbox" name="chkapo1-2" id="chkapo1-2"/>
                        <input value="mar" type="checkbox" name="chkapo1-3" id="chkapo1-3"/>
                        <input value="abr" type="checkbox" name="chkapo1-4" id="chkapo1-4"/>
                        <input value="may" type="checkbox" name="chkapo1-5" id="chkapo1-5"/>
                        <input value="jun" type="checkbox" name="chkapo1-6" id="chkapo1-6"/>
                        <input value="jul" type="checkbox" name="chkapo1-7" id="chkapo1-7"/>
                        <input value="ago" type="checkbox" name="chkapo1-8" id="chkapo1-8"/>
                        <input value="sep" type="checkbox" name="chkapo1-9" id="chkapo1-9"/>
                        <input value="oct" type="checkbox" name="chkapo1-10" id="chkapo1-10"/>
                        <input value="nov" type="checkbox" name="chkapo1-11" id="chkapo1-11"/>
                        <input value="dic" type="checkbox" name="chkapo1-12" id="chkapo1-12"/>
                    </div>
                </div>
                <div class="fila-titulo fila-hijo2">
                    <h3 id="fila-apo-hijo2">Hijo 2</h3>
                    <div class="fila-apo2"><label for="chkfull-hijo2">Marcar todo</label><input type="checkbox" id="chkfull-hijo2" name="chkfull-hijo2"/></div>
                </div>
                <div class="fila fila-hijo2">
                    <div>
                        <label for="chkapo2-1">E</label>
                        <label for="chkapo2-2">F</label>
                        <label for="chkapo2-3">M</label>
                        <label for="chkapo2-4">A</label>
                        <label for="chkapo2-5">M</label>
                        <label for="chkapo2-6">J</label>
                        <label for="chkapo2-7">J</label>
                        <label for="chkapo2-8">A</label>
                        <label for="chkapo2-9">S</label>
                        <label for="chkapo2-10">O</label>
                        <label for="chkapo2-11">N</label>
                        <label for="chkapo2-12">D</label>
                    </div>
                    <div class="fila-apo2" id="fila-apo2">
                        <input value="ene" type="checkbox" name="chkapo2-1" id="chkapo2-1"/>
                        <input value="feb" type="checkbox" name="chkapo2-2" id="chkapo2-2"/>
                        <input value="mar" type="checkbox" name="chkapo2-3" id="chkapo2-3"/>
                        <input value="abr" type="checkbox" name="chkapo2-4" id="chkapo2-4"/>
                        <input value="may" type="checkbox" name="chkapo2-5" id="chkapo2-5"/>
                        <input value="jun" type="checkbox" name="chkapo2-6" id="chkapo2-6"/>
                        <input value="jul" type="checkbox" name="chkapo2-7" id="chkapo2-7"/>
                        <input value="ago" type="checkbox" name="chkapo2-8" id="chkapo2-8"/>
                        <input value="sep" type="checkbox" name="chkapo2-9" id="chkapo2-9"/>
                        <input value="oct" type="checkbox" name="chkapo2-10" id="chkapo2-10"/>
                        <input value="nov" type="checkbox" name="chkapo2-11" id="chkapo2-11"/>
                        <input value="dic" type="checkbox" name="chkapo2-12" id="chkapo2-12"/>
                    </div>
                </div>
                <div class="fila-titulo fila-hijo3">
                    <h3 id="fila-apo-hijo3">Hijo 3</h3>
                    <div class="fila-apo3"><label for="chkfull-hijo3">Marcar todo</label><input type="checkbox" id="chkfull-hijo3" name="chkfull-hijo3"/></div>
                </div>
                <div class="fila fila-hijo3">
                    <div>
                        <label for="chkapo3-1">E</label>
                        <label for="chkapo3-2">F</label>
                        <label for="chkapo3-3">M</label>
                        <label for="chkapo3-4">A</label>
                        <label for="chkapo3-5">M</label>
                        <label for="chkapo3-6">J</label>
                        <label for="chkapo3-7">J</label>
                        <label for="chkapo3-8">A</label>
                        <label for="chkapo3-9">S</label>
                        <label for="chkapo3-10">O</label>
                        <label for="chkapo3-11">N</label>
                        <label for="chkapo3-12">D</label>
                    </div>
                    <div class="fila-apo3" id="fila-apo3">
                        <input value="ene" type="checkbox" name="chkapo3-1" id="chkapo3-1"/>
                        <input value="feb" type="checkbox" name="chkapo3-2" id="chkapo3-2"/>
                        <input value="mar" type="checkbox" name="chkapo3-3" id="chkapo3-3"/>
                        <input value="abr" type="checkbox" name="chkapo3-4" id="chkapo3-4"/>
                        <input value="may" type="checkbox" name="chkapo3-5" id="chkapo3-5"/>
                        <input value="jun" type="checkbox" name="chkapo3-6" id="chkapo3-6"/>
                        <input value="jul" type="checkbox" name="chkapo3-7" id="chkapo3-7"/>
                        <input value="ago" type="checkbox" name="chkapo3-8" id="chkapo3-8"/>
                        <input value="sep" type="checkbox" name="chkapo3-9" id="chkapo3-9"/>
                        <input value="oct" type="checkbox" name="chkapo3-10" id="chkapo3-10"/>
                        <input value="nov" type="checkbox" name="chkapo3-11" id="chkapo3-11"/>
                        <input value="dic" type="checkbox" name="chkapo3-12" id="chkapo3-12"/>
                    </div>
                </div>
               <div class="columna">
                    <div>
                        <h5>Revision Medica</h5>
                        <div>
                            <div class="fila-apo1 fila-hijo1 fila-participacion"><input value="rm1" type="checkbox" id="chkrv-1" name="chkrv-1"/><label id="fila-rev-hijo1" for="chkrv-1">Hijo 1</label></div>
                            <div class="fila-apo2 fila-hijo2 fila-participacion"><input value="rm2" type="checkbox" id="chkrv-2" name="chkrv-2"/><label id="fila-rev-hijo2" for="chkrv-2">Hijo 2</label></div>
                            <div class="fila-apo3 fila-hijo3 fila-participacion"><input value="rm3" type="checkbox" id="chkrv-3" name="chkrv-3"/><label id="fila-rev-hijo3" for="chkrv-3">Hijo 3</label></div>
                        </div>
                    </div>
                    <div>
                        <h5>Kermesse</h5>
                        <div>
                            <div class="fila-apo1 fila-hijo1 fila-participacion"><input value="k1" type="checkbox" id="chkkm-1" name="chkkm-1"/><label id="fila-ker-hijo1" for="chkkm-1">Hijo 1</label></div>
                            <div class="fila-apo2 fila-hijo2 fila-participacion"><input value="k2" type="checkbox" id="chkkm-2" name="chkkm-2"/><label id="fila-ker-hijo2" for="chkkm-2">Hijo 2</label></div>
                            <div class="fila-apo3 fila-hijo3 fila-participacion "><input value="k3" type="checkbox" id="chkkm-3" name="chkkm-3"/><label id="fila-ker-hijo3" for="chkkm-3">Hijo 3</label></div>
                        </div>
                    </div>
               </div>
            </div>
        </div>
    </div>
    <div class="overlay" id="overlay-popup">
        <div class="popup-2 " id="popup-buscar">
            <div class="btn-cerrar-popup" id="btn-cerrar-popup">&times;</div>
            <div class="formulario-2">
                <h5>Buscar</h5>
                <div>
                    <input type="text" id="txtbusqueda" name="txtbusqueda"/>
                </div>
                <div id="contenedor-lista"></div>
            </div>
        </div>
    </div>
</body>
<script src="js/tarjeta.js"></script>
</html>
<?php
    } else {
        header('location:vistas/login.php');
    }
?>