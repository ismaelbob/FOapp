$(document).ready(() => {
    $('#btnbuscar').click((event) => {
        alertify.set('notifier','position', 'top-right');
        event.preventDefault()
        if ($('#txtcodigo').val() !== '') {
            $.ajax({
                data: 'cod=' + $('#txtcodigo').val(),
                url: '../procesos/mt-datos.php',
                type: 'post',
                success: (respuesta) => {
                    if (respuesta !== 'Codigo no registrado') {
                        $('#pnl-datos').html(respuesta)
                        $('#txtcodigo').blur()

                        $.ajax({
                            data: 'cod=' + $('#txtcodigo').val(),
                            url: '../procesos/mt-participaciones.php',
                            type: 'post',
                            success: (res) => {
                                $('#pnl-tarjeta').html(res)
                            }
                        })
                    } else {
                        alertify.error(respuesta)
                        $('#pnl-datos').html('<div class="esqueleton-titulo"></div><div class="esqueleton-largo"></div><div class="esqueleton-corto"></div>')
                        $('#pnl-tarjeta').html('<div class="esqueleton-titulo"></div><div class="esqueleton-largo"></div><div class="esqueleton-corto"></div><div class="esqueleton-titulo"></div><div class="esqueleton-largo"></div>')
                    }
                }
            })
        } else {
            alertify.error('Ingrese un codigo para buscar')
        }
    })
})