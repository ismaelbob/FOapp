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
                <div>
                    <div><input type="number" name="txtcodigo" id="txtcodigo"/><button class="btn-popup">...</button></div>
                    <input id="btnbuscar" type="button" value="Buscar">
                </div>
                <div>
                    <p>
                        <div class="linea"><h5>ID de familia:</h5><span id="idhogar"></span></div>
                        <div class="linea"><h5>Padre:</h5><span id="padre"></span></div>
                        <div class="linea"><h5>Madre:</h5><span id="madre"></span></div>
                    </p>
                    <p>
                        <div class="linea"><h5>Hijos inscritos:</h5><span id="cantidad"></span></div>
                        <div class="linea"><h5>Hijo 1:</h5><span id="hijo1"></span></div>
                        <div class="linea"><h5>Hijo 2:</h5><span id="hijo2"></span></div>
                        <div class="linea"><h5>Hijo 3:</h5><span id="hijo3"></span></div>
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
                    <div><label for="chkfull-reu">Marcar todo</label><input type="checkbox" id="chkfull-reu" name="chkfull-reu"/></div>
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
                    <div>
                        <input type="checkbox" name="chkreunion-1" id="chkreunion-1"/>
                        <input type="checkbox" name="chkreunion-2" id="chkreunion-2"/>
                        <input type="checkbox" name="chkreunion-3" id="chkreunion-3"/>
                        <input type="checkbox" name="chkreunion-4" id="chkreunion-4"/>
                        <input type="checkbox" name="chkreunion-5" id="chkreunion-5"/>
                        <input type="checkbox" name="chkreunion-6" id="chkreunion-6"/>
                        <input type="checkbox" name="chkreunion-7" id="chkreunion-7"/>
                        <input type="checkbox" name="chkreunion-8" id="chkreunion-8"/>
                        <input type="checkbox" name="chkreunion-9" id="chkreunion-9"/>
                        <input type="checkbox" name="chkreunion-10" id="chkreunion-10"/>
                        <input type="checkbox" name="chkreunion-11" id="chkreunion-11"/>
                        <input type="checkbox" name="chkreunion-12" id="chkreunion-12"/>
                    </div>
                </div>
                <h5>Aportes</h5>
                <div class="fila-titulo">
                    <h5>Hijo 1</h5>
                    <div><label for="chkfull-hijo1">Marcar todo</label><input type="checkbox" id="chkfull-hijo1" name="chkfull-hijo1"/></div>
                </div>
                <div class="fila">
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
                    <div id="fila-apo1">
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
                <div class="fila-titulo">
                    <h5>Hijo 2</h5>
                    <div><label for="chkfull-hijo2">Marcar todo</label><input type="checkbox" id="chkfull-hijo2" name="chkfull-hijo2"/></div>
                </div>
                <div class="fila">
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
                    <div id="fila-apo2">
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
                <div class="fila-titulo">
                    <h5>Hijo 3</h5>
                    <div><label for="chkfull-hijo3">Marcar todo</label><input type="checkbox" id="chkfull-hijo3" name="chkfull-hijo3"/></div>
                </div>
                <div class="fila">
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
                    <div id="fila-apo3">
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
                <h5>Otros</h5>
                <div class="columna">
                    <div>
                        <div><label for="chkrv-1">Revision médica</label><input type="checkbox" id="chkrv-1" name="chkrv-1"/></div>
                        <div><label for="chkrv-2">Revision médica</label><input type="checkbox" id="chkrv-2" name="chkrv-2"/></div>
                        <div><label for="chkrv-3">Revision médica</label><input type="checkbox" id="chkrv-3" name="chkrv-3"/></div>
                    </div>
                    <div>
                        <div><label for="chkkm-1">Kermesse</label><input type="checkbox" id="chkkm-1" name="chkkm-1"/></div>
                        <div><label for="chkkm-2">Kermesse</label><input type="checkbox" id="chkkm-2" name="chkkm-2"/></div>
                        <div><label for="chkkm-3">Kermesse</label><input type="checkbox" id="chkkm-3" name="chkkm-3"/></div>
                    </div>
                </div>
            </div>
            <div class="pnl_menu">
                <h4>Acciones</h4>
                <button>Aporte</button>
                <button>Multa</button>
            </div>
            <div class="pnl_lista">
                <h4></h4>
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