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
    <link rel="stylesheet" href="css/asistencia.css">
    <link rel="stylesheet" href="css/popup.css">
    <link rel="stylesheet" href="librerias/alertifyjs/css/alertify.css">
    <link rel="stylesheet" href="librerias/alertifyjs/css/themes/default.css">
    <script src="librerias/jquery-3.4.1.min.js"></script>
    <script src="librerias/alertifyjs/alertify.js"></script>
</head>
<body>
    <header>
        <nav>
            <ul>
                <li><a href="tarjeta.php">Mi tarjeta</a></li>
                <li><a href="asistencia.php" class="active">Asistencia</a></li>
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
    <div class="contenedor-main">
        <div class="formulario-1" id="form-reunion">
            <h5>Registrar asistencia</h5>
            <form id="form-reg-reunion" method="post">
                <label for="cmbmes">Mes:</label>
                <select name="cmbmes" id="cmbmes">
                    <option value="r1">Enero</option>
                    <option value="r2">Febrero</option>
                    <option value="r3">Marzo</option>
                    <option value="r4">Abril</option>
                    <option value="r5">Mayo</option>
                    <option value="r6">Junio</option>
                    <option value="r7">Julio</option>
                    <option value="r8">Agosto</option>
                    <option value="r9">Septiembre</option>
                    <option value="r10">Octubre</option>
                    <option value="r11">Noviembre</option>
                    <option value="r12">Diciembre</option>
                </select>
                <label for="txtcodigo">Codigo:</label>
                <input type="number" name="txtcodigo" id="txtcodigo"/>
                <button class="btn-buscar" id="btn-buscar" type="button">...</button>
                <label>Beneficiario:</label><span id="lblnombres"></span>
                <input id="btn-registrar" type="submit" value="Registrar"/>
            </form>
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
<script src="js/asistencia.js"></script>
</html>
<?php
    } else {
        header('location:vistas/login.php');
    }
?>