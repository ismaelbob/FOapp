<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FO App | Login</title>
    <link rel="stylesheet" type="text/css" href="../css/login.css"/>
</head>
<body>
    <div class="overlay">
        <div class="cajon-login">
           <form method="POST" action="../procesos/iniciarSesion.php">
                <div class="img">
                    <img src="../img/usuario.png" alt="usuario"/>
                </div>
                <div class="contenido-central">
                <h3>Iniciar sesion</h3>
                    <label for="txtusuario">Usuario:</label>
                    <input type="text" name="txtusuario" id="txtusuario" required/>
                    <label for="txtpassword">Contraseña:</label>
                    <input type="password" name="txtpassword" id="txtpassword" required/>
                </div>
                <div class="contenido-abajo">
                    <input type="submit" value="Acceder"/>
                </div>
           </form>
           <a class="link-externo" href="../mitarjeta/">Mi Tarjeta</a>
           <a class="link-externo2" href="../micuenta/">Mi cuenta</a>
        </div>
    </div>
</body>
</html>