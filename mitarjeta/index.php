<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/tarjetappff.css">
    <script src="../librerias/jquery-3.4.1.min.js"></script>
    <script src="../librerias/alertifyjs/alertify.js"></script>
    <title>Mi Tarjeta</title>
</head>
<body>
    <div class="container">
        <div class="pnl-principal">
            <div class="pnl-buscar">
                <form>
                    <input type="number" placeholder="Codigo de su hijo(a)" name="txtcodigo" id="txtcodigo"/>
                    <input type="submit" value="Buscar" id="btnbuscar"/>
                </form>
                <div>
                    <h1>MI TARJETA</h1>
                </div>
                <div>
                    <h2>Fundacion Oriel</h2>
                </div>
            </div>
            <div class="pnl-datos" id="pnl-datos">
                <div class="msg-error" id="msg-error"></div>
                <div class="esqueleton-titulo"></div><div class="esqueleton-largo"></div>
                <div class="esqueleton-corto"></div><div class="esqueleton-largo"></div>
                <div class="esqueleton-corto"></div>
            </div>
            <div class="pnl-tarjeta" id="pnl-tarjeta">
                <div class="esqueleton-titulo"></div><div class="esqueleton-largo"></div>
                <div class="esqueleton-corto"></div><div class="esqueleton-largo"></div>
                <div class="fila">
                    <div class="esqueleton-titulo"></div>
                    <div class="esqueleton-largo"></div>
                    <div class="esqueleton-corto"></div>
                    <div class="esqueleton-largo"></div>
                </div>
            </div>
        </div>
    </div>
</body>
<script src="../js/tarjeta-ppff.js"></script>
</html>