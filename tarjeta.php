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
    <div>
        Datos 
    </div>
    <div>
        Tarjeta
    </div>
    <div>
        Menu contextual 
    </div>
</body>
</html>
<?php
    } else {
        header('location:vistas/login.php');
    }
?>