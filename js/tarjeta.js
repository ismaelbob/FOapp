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

                        $.ajax({
                            data: 'cod=' + $('#txtcodigo').val(),
                            url: 'procesos/obtenerDatosReunion.php',
                            type: 'post',
                            success: (res) => {
                                data = jQuery.parseJSON(res)
                                if (data.r1 === 'p') {
                                    $('#chkene').attr('checked', true)
                                    $('#chkene').prop('disabled', true)
                                } else {
                                    $('#chkene').attr('checked', false)
                                    $('#chkene').prop('disabled', false)
                                }
                                if (data.r2 === 'p') {
                                    $('#chkfeb').attr('checked', true)
                                }else {
                                    $('#chkfeb').attr('checked', false)
                                }
                                if (data.r3 === 'p') {
                                    $('#chkmar').attr('checked', true)
                                }else {
                                    $('#chkmar').attr('checked', false)
                                }
                                if (data.r4 === 'p') {
                                    $('#chkabr').attr('checked', true)
                                }else {
                                    $('#chkabr').attr('checked', false)
                                }
                                if (data.r5 === 'p') {
                                    $('#chkmay').attr('checked', true)
                                }else {
                                    $('#chkmay').attr('checked', false)
                                }
                                if (data.r6 === 'p') {
                                    $('#chkjun').attr('checked', true)
                                }else {
                                    $('#chkjun').attr('checked', false)
                                }
                                if (data.r7 === 'p') {
                                    $('#chkjul').attr('checked', true)
                                } else {
                                    $('#chkjul').attr('checked', false)
                                }
                                if (data.r8 === 'p') {
                                    $('#chkago').attr('checked', true)
                                }else {
                                    $('#chkago').attr('checked', false)
                                }
                                if (data.r9 === 'p') {
                                    $('#chksep').attr('checked', true)
                                }else {
                                    $('#chksep').attr('checked', false)
                                }
                                if (data.r10 === 'p') {
                                    $('#chkoct').attr('checked', true)
                                }else {
                                    $('#chkoct').attr('checked', false)
                                }
                                if (data.r11 === 'p') {
                                    $('#chknov').attr('checked', true)
                                }else {
                                    $('#chknov').attr('checked', false)
                                }
                                if (data.r12 === 'p') {
                                    $('#chkdic').attr('checked', true)
                                }else {
                                    $('#chkdic').attr('checked', false)
                                }

                                if (data.rm1 === 'p') {
                                    $('#chkrv-1').attr('checked', true)
                                }else {
                                    $('#chkrv-1').attr('checked', false)
                                }
                                if (data.rm2 === 'p') {
                                    $('#chkrv-2').attr('checked', true)
                                }else {
                                    $('#chkrv-2').attr('checked', false)
                                }
                                if (data.rm3 === 'p') {
                                    $('#chkrv-3').attr('checked', true)
                                }else {
                                    $('#chkrv-3').attr('checked', false)
                                }

                                if (data.k1 === 'p') {
                                    $('#chkkm-1').attr('checked', true)
                                }else {
                                    $('#chkkm-1').attr('checked', false)
                                }
                                if (data.k2 === 'p') {
                                    $('#chkkm-2').attr('checked', true)
                                }else {
                                    $('#chkkm-2').attr('checked', false)
                                }
                                if (data.k3 === 'p') {
                                    $('#chkkm-3').attr('checked', true)
                                }else {
                                    $('#chkkm-3').attr('checked', false)
                                }
                            },
                        })
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