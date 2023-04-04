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
</head>
<body>
    <header>
        <nav>
            <ul>
                <li><a href="#" class="active">Mi tarjeta</a></li>
                <li><a href="#">Administrar</a></li>
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
        <div class="pnl_datos">
            <h4>Datos</h4>
            <form action="">
                <input type="text" name="txtcodigo" id="txtcodigo">
                <input type="button" value="Buscar">
            </form>
            <div>
                <p>
                    <span>Nombre:</span><br/>
                    <span>José Pérez</span>
                </p>
                <p>
                    <span>Edad:</span><br/>
                    <span>12 años</span>
                </p>
            </div>
        </div>
        <div class="pnl_tarjeta">
            <h4>Mi Tarjeta</h4>
        </div>
        <div class="pnl_menu">
            <h4>Acciones</h4>
            <button>Aporte</button>
            <button>Multa</button>
        </div>
        <div class="pnl_lista">
            Lista de recibos
        </div>
    </div>
</body>
</html>
<?php
    } else {
        header('location:vistas/login.php');
    }
?>