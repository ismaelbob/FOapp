<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mi ceunta | FOApp</title>
    <link rel="stylesheet" href="../css/micuenta.css">
    <link rel="stylesheet" href="../librerias/alertifyjs/css/alertify.css">
    <link rel="stylesheet" href="../librerias/alertifyjs/css/themes/default.css">
    <script src="../librerias/jquery-3.4.1.min.js"></script>
    <script src="../librerias/alertifyjs/alertify.js"></script>
</head>
<body>
    <div class="contenedor">
        <h3>Mi Cuenta</h3>
        <div>
            <form id="frm-consulta">
                <label class="subtitulo" for="txtcodigo">Codigo</label>
                <input type="number" name="txtcodigo" id="txtcodigo">
                <input type="submit" value="Consultar" id="btn-consultar">
            </form>
            <p class="fila"><span class="subtitulo">Saldo:</span> <span class="subtitulo2" id="lblsalida"></span></p>
        </div>
    </div>
</body>
<script src="../js/micuenta.js"></script>
</html>