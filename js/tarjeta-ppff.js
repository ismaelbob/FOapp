$(document).ready(() => {
    $('#btnbuscar').click((event) => {
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
                        $('#msg-error').html(respuesta)
                    }
                }
            })
        } else {
            $('#msg-error').html('Ingrese un codigo para buscar')
            $('#txtcodigo').focus()
        }
    })
})