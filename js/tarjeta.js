$(document).ready(() => {
    $('#btnbuscar').click(() => {
        if ($('#txtcodigo').val() !== '') {
            $.ajax({
                data: 'cod=' + $('#txtcodigo').val(),
                url: 'procesos/obtenerDatosBenHogar.php',
                type: 'post',
                success: (res) => {
                    if (res !== 'error') {
                        datos = jQuery.parseJSON(res)
                        $('#idhogar').html(datos[0].hogar)
                        $('#padre').html(datos[0].padre)
                        $('#madre').html(datos[0].madre)
                        $('#tel1').html(datos[0].telefono_a)
                        $('#tel2').html(datos[0].telefono_b)
                        if (datos.length === 1) {
                            nombrehijo1 = datos[0].nombres + ' ' + datos[0].paterno + ' ' + datos[0].materno
                            $('#hijo1').html(nombrehijo1)
                            $('#hijo2').html('')
                            $('#hijo3').html('')
                            $('#cantidad').html('1')
                        }
                        if (datos.length === 2) {
                            nombrehijo1 = datos[0].nombres + ' ' + datos[0].paterno + ' ' + datos[0].materno
                            $('#hijo1').html(nombrehijo1)
                            nombrehijo2 = datos[1].nombres + ' ' + datos[1].paterno + ' ' + datos[1].materno
                            $('#hijo2').html(nombrehijo2)
                            $('#hijo3').html('')
                            $('#cantidad').html('2')
                        }
                        if (datos.length === 3) {
                            nombrehijo1 = datos[0].nombres + ' ' + datos[0].paterno + ' ' + datos[0].materno
                            $('#hijo1').html(nombrehijo1)
                            nombrehijo2 = datos[1].nombres + ' ' + datos[1].paterno + ' ' + datos[1].materno
                            $('#hijo2').html(nombrehijo2)
                            nombrehijo3 = datos[2].nombres + ' ' + datos[2].paterno + ' ' + datos[2].materno
                            $('#hijo2').html(nombrehijo3)
                            $('#cantidad').html('3')
                        }
                    } else {
                        alertify.set('notifier','position', 'top-right');
                        alertify.error('El codigo ingresado, no existe')
                        $('#txtcodigo').focus()
                    }
                },
            })
        } else {
            alertify.set('notifier','position', 'top-right');
            alertify.error('Ingrese un codigo para buscar')
            $('#txtcodigo').focus()
        }
    })


    //
})