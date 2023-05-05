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
    <div class="container">
        <div>
            <h5>Registrar asistencia</h5>
            <form id="form-reg-reunion" method="post">
                <input type="number" name="txtcodigo" id="txtcodigo"/>
                <select name="cmbmes" id="cmbmes">
                    <option value="ene">Enero</option>
                    <option value="feb">Febrero</option>
                    <option value="mar">Marzo</option>
                </select>
                <input type="submit" value="Registrar"/>
            </form>
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