$(document).ready(() => {
    $('#btnbuscar').click(() => {
        if ($('#txtcodigo').val() !== '') {
            console.log('1: Buscando codigos')
            $.ajax({
                data: 'cod=' + $('#txtcodigo').val(),
                url: 'procesos/obtenerDatosBenHogar.php',
                type: 'post',
                success: (res) => {
                    if (res !== 'error') {
                        datos = jQuery.parseJSON(res)
                        console.log('2: Acabe de buscar codigo')
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
                            $('#hijo3').html(nombrehijo3)
                            $('#cantidad').html('3')
                        }

                        console.log('3: Buscando participaciones')
                        $.ajax({
                            data: 'cod=' + $('#txtcodigo').val(),
                            url: 'procesos/obtenerDatosReunion.php',
                            type: 'post',
                            success: (res) => {
                                data = jQuery.parseJSON(res)
                                console.log('4: Acade de buscar participaciones')
                                if (data.r1 === 'p') {
                                    $('#chkene').prop('checked', true)
                                    $('#chkene').prop('disabled', true)
                                } else {
                                    $('#chkene').prop('checked', false)
                                    $('#chkene').prop('disabled', false)
                                }
                                if (data.r2 === 'p') {
                                    $('#chkfeb').prop('checked', true)
                                }else {
                                    $('#chkfeb').prop('checked', false)
                                }
                                if (data.r3 === 'p') {
                                    $('#chkmar').prop('checked', true)
                                }else {
                                    $('#chkmar').prop('checked', false)
                                }
                                if (data.r4 === 'p') {
                                    $('#chkabr').prop('checked', true)
                                }else {
                                    $('#chkabr').prop('checked', false)
                                }
                                if (data.r5 === 'p') {
                                    $('#chkmay').prop('checked', true)
                                }else {
                                    $('#chkmay').prop('checked', false)
                                }
                                if (data.r6 === 'p') {
                                    $('#chkjun').prop('checked', true)
                                }else {
                                    $('#chkjun').prop('checked', false)
                                }
                                if (data.r7 === 'p') {
                                    $('#chkjul').prop('checked', true)
                                } else {
                                    $('#chkjul').prop('checked', false)
                                }
                                if (data.r8 === 'p') {
                                    $('#chkago').prop('checked', true)
                                }else {
                                    $('#chkago').prop('checked', false)
                                }
                                if (data.r9 === 'p') {
                                    $('#chksep').prop('checked', true)
                                }else {
                                    $('#chksep').prop('checked', false)
                                }
                                if (data.r10 === 'p') {
                                    $('#chkoct').prop('checked', true)
                                }else {
                                    $('#chkoct').prop('checked', false)
                                }
                                if (data.r11 === 'p') {
                                    $('#chknov').prop('checked', true)
                                }else {
                                    $('#chknov').prop('checked', false)
                                }
                                if (data.r12 === 'p') {
                                    $('#chkdic').prop('checked', true)
                                }else {
                                    $('#chkdic').prop('checked', false)
                                }

                                if (data.rm1 === 'p') {
                                    $('#chkrv-1').prop('checked', true)
                                }else {
                                    $('#chkrv-1').prop('checked', false)
                                }
                                if (data.rm2 === 'p') {
                                    $('#chkrv-2').prop('checked', true)
                                }else {
                                    $('#chkrv-2').prop('checked', false)
                                }
                                if (data.rm3 === 'p') {
                                    $('#chkrv-3').prop('checked', true)
                                }else {
                                    $('#chkrv-3').prop('checked', false)
                                }

                                if (data.k1 === 'p') {
                                    $('#chkkm-1').prop('checked', true)
                                }else {
                                    $('#chkkm-1').prop('checked', false)
                                }
                                if (data.k2 === 'p') {
                                    $('#chkkm-2').prop('checked', true)
                                }else {
                                    $('#chkkm-2').prop('checked', false)
                                }
                                if (data.k3 === 'p') {
                                    $('#chkkm-3').prop('checked', true)
                                }else {
                                    $('#chkkm-3').prop('checked', false)
                                }
                            },
                        })
                        console.log('5: Buscando aportes')
                        $.ajax({
                            data: 'cod=' + datos[0].idbeneficiario,
                            url: 'procesos/obtenerDatosAporte.php',
                            type: 'post',
                            success: (res) => {
                                aportes = jQuery.parseJSON(res)
                                console.log('6: Acabe de buscar aportes')
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