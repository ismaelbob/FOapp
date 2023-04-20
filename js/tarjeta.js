$(document).ready(() => {
    $('#btnbuscar').click(() => {
        $.ajax({
            data: 'cod=' + $('#txtcodigo').val(),
            url: 'procesos/obtenerDatosBenHogar.php',
            type: 'post',
            success: (res) => {
                datos = jQuery.parseJSON(res)
                console.log(datos)
            },
        })
    })
})