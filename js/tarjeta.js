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

                            $.ajax({
                                data: 'cod=' + datos[0].idbeneficiario,
                                url: 'procesos/obtenerDatosAporte.php',
                                type: 'post',
                                success: (res) => {
                                    aportes1 = jQuery.parseJSON(res)
                                    colocarCheck(aportes1.ene, $('#chkapo1-1'))
                                    colocarCheck(aportes1.feb, $('#chkapo1-2'))
                                    colocarCheck(aportes1.mar, $('#chkapo1-3'))
                                    colocarCheck(aportes1.abr, $('#chkapo1-4'))
                                    colocarCheck(aportes1.may, $('#chkapo1-5'))
                                    colocarCheck(aportes1.jun, $('#chkapo1-6'))
                                    colocarCheck(aportes1.jul, $('#chkapo1-7'))
                                    colocarCheck(aportes1.ago, $('#chkapo1-8'))
                                    colocarCheck(aportes1.sep, $('#chkapo1-9'))
                                    colocarCheck(aportes1.oct, $('#chkapo1-10'))
                                    colocarCheck(aportes1.nov, $('#chkapo1-11'))
                                    colocarCheck(aportes1.dic, $('#chkapo1-12'))
                                },
                            })
                            cambiarCheck($('#chkapo2-1'), $('#chkapo2-2'), $('#chkapo2-3'), $('#chkapo2-4'), $('#chkapo2-5'), $('#chkapo2-6'), $('#chkapo2-7'), $('#chkapo2-8'), $('#chkapo2-9'), $('#chkapo2-10'), $('#chkapo2-11'), $('#chkapo2-12'), false)
                            cambiarCheck($('#chkapo3-1'), $('#chkapo3-2'), $('#chkapo3-3'), $('#chkapo3-4'), $('#chkapo3-5'), $('#chkapo3-6'), $('#chkapo3-7'), $('#chkapo3-8'), $('#chkapo3-9'), $('#chkapo3-10'), $('#chkapo3-11'), $('#chkapo3-12'), false)
                        }
                        if (datos.length === 2) {
                            nombrehijo1 = datos[0].nombres + ' ' + datos[0].paterno + ' ' + datos[0].materno
                            $('#hijo1').html(nombrehijo1)
                            nombrehijo2 = datos[1].nombres + ' ' + datos[1].paterno + ' ' + datos[1].materno
                            $('#hijo2').html(nombrehijo2)
                            $('#hijo3').html('')
                            $('#cantidad').html('2')

                            $.ajax({
                                data: 'cod=' + datos[0].idbeneficiario,
                                url: 'procesos/obtenerDatosAporte.php',
                                type: 'post',
                                success: (res) => {
                                    aportes1 = jQuery.parseJSON(res)
                                    colocarCheck(aportes1.ene, $('#chkapo1-1'))
                                    colocarCheck(aportes1.feb, $('#chkapo1-2'))
                                    colocarCheck(aportes1.mar, $('#chkapo1-3'))
                                    colocarCheck(aportes1.abr, $('#chkapo1-4'))
                                    colocarCheck(aportes1.may, $('#chkapo1-5'))
                                    colocarCheck(aportes1.jun, $('#chkapo1-6'))
                                    colocarCheck(aportes1.jul, $('#chkapo1-7'))
                                    colocarCheck(aportes1.ago, $('#chkapo1-8'))
                                    colocarCheck(aportes1.sep, $('#chkapo1-9'))
                                    colocarCheck(aportes1.oct, $('#chkapo1-10'))
                                    colocarCheck(aportes1.nov, $('#chkapo1-11'))
                                    colocarCheck(aportes1.dic, $('#chkapo1-12'))
                                },
                            })
                            $.ajax({
                                data: 'cod=' + datos[1].idbeneficiario,
                                url: 'procesos/obtenerDatosAporte.php',
                                type: 'post',
                                success: (res) => {
                                    aportes2 = jQuery.parseJSON(res)
                                    colocarCheck(aportes2.ene, $('#chkapo2-1'))
                                    colocarCheck(aportes2.feb, $('#chkapo2-2'))
                                    colocarCheck(aportes2.mar, $('#chkapo2-3'))
                                    colocarCheck(aportes2.abr, $('#chkapo2-4'))
                                    colocarCheck(aportes2.may, $('#chkapo2-5'))
                                    colocarCheck(aportes2.jun, $('#chkapo2-6'))
                                    colocarCheck(aportes2.jul, $('#chkapo2-7'))
                                    colocarCheck(aportes2.ago, $('#chkapo2-8'))
                                    colocarCheck(aportes2.sep, $('#chkapo2-9'))
                                    colocarCheck(aportes2.oct, $('#chkapo2-10'))
                                    colocarCheck(aportes2.nov, $('#chkapo2-11'))
                                    colocarCheck(aportes2.dic, $('#chkapo2-12'))
                                },
                            })

                            cambiarCheck($('#chkapo3-1'), $('#chkapo3-2'), $('#chkapo3-3'), $('#chkapo3-4'), $('#chkapo3-5'), $('#chkapo3-6'), $('#chkapo3-7'), $('#chkapo3-8'), $('#chkapo3-9'), $('#chkapo3-10'), $('#chkapo3-11'), $('#chkapo3-12'), false)
                        }
                        if (datos.length === 3) {
                            nombrehijo1 = datos[0].nombres + ' ' + datos[0].paterno + ' ' + datos[0].materno
                            $('#hijo1').html(nombrehijo1)
                            nombrehijo2 = datos[1].nombres + ' ' + datos[1].paterno + ' ' + datos[1].materno
                            $('#hijo2').html(nombrehijo2)
                            nombrehijo3 = datos[2].nombres + ' ' + datos[2].paterno + ' ' + datos[2].materno
                            $('#hijo3').html(nombrehijo3)
                            $('#cantidad').html('3')

                            $.ajax({
                                data: 'cod=' + datos[0].idbeneficiario,
                                url: 'procesos/obtenerDatosAporte.php',
                                type: 'post',
                                success: (res) => {
                                    aportes1 = jQuery.parseJSON(res)
                                    colocarCheck(aportes1.ene, $('#chkapo1-1'))
                                    colocarCheck(aportes1.feb, $('#chkapo1-2'))
                                    colocarCheck(aportes1.mar, $('#chkapo1-3'))
                                    colocarCheck(aportes1.abr, $('#chkapo1-4'))
                                    colocarCheck(aportes1.may, $('#chkapo1-5'))
                                    colocarCheck(aportes1.jun, $('#chkapo1-6'))
                                    colocarCheck(aportes1.jul, $('#chkapo1-7'))
                                    colocarCheck(aportes1.ago, $('#chkapo1-8'))
                                    colocarCheck(aportes1.sep, $('#chkapo1-9'))
                                    colocarCheck(aportes1.oct, $('#chkapo1-10'))
                                    colocarCheck(aportes1.nov, $('#chkapo1-11'))
                                    colocarCheck(aportes1.dic, $('#chkapo1-12'))
                                },
                            })
                            $.ajax({
                                data: 'cod=' + datos[1].idbeneficiario,
                                url: 'procesos/obtenerDatosAporte.php',
                                type: 'post',
                                success: (res) => {
                                    aportes2 = jQuery.parseJSON(res)
                                    colocarCheck(aportes2.ene, $('#chkapo2-1'))
                                    colocarCheck(aportes2.feb, $('#chkapo2-2'))
                                    colocarCheck(aportes2.mar, $('#chkapo2-3'))
                                    colocarCheck(aportes2.abr, $('#chkapo2-4'))
                                    colocarCheck(aportes2.may, $('#chkapo2-5'))
                                    colocarCheck(aportes2.jun, $('#chkapo2-6'))
                                    colocarCheck(aportes2.jul, $('#chkapo2-7'))
                                    colocarCheck(aportes2.ago, $('#chkapo2-8'))
                                    colocarCheck(aportes2.sep, $('#chkapo2-9'))
                                    colocarCheck(aportes2.oct, $('#chkapo2-10'))
                                    colocarCheck(aportes2.nov, $('#chkapo2-11'))
                                    colocarCheck(aportes2.dic, $('#chkapo2-12'))
                                },
                            })
                            $.ajax({
                                data: 'cod=' + datos[2].idbeneficiario,
                                url: 'procesos/obtenerDatosAporte.php',
                                type: 'post',
                                success: (res) => {
                                    aportes3 = jQuery.parseJSON(res)
                                    colocarCheck(aportes3.ene, $('#chkapo3-1'))
                                    colocarCheck(aportes3.feb, $('#chkapo3-2'))
                                    colocarCheck(aportes3.mar, $('#chkapo3-3'))
                                    colocarCheck(aportes3.abr, $('#chkapo3-4'))
                                    colocarCheck(aportes3.may, $('#chkapo3-5'))
                                    colocarCheck(aportes3.jun, $('#chkapo3-6'))
                                    colocarCheck(aportes3.jul, $('#chkapo3-7'))
                                    colocarCheck(aportes3.ago, $('#chkapo3-8'))
                                    colocarCheck(aportes3.sep, $('#chkapo3-9'))
                                    colocarCheck(aportes3.oct, $('#chkapo3-10'))
                                    colocarCheck(aportes3.nov, $('#chkapo3-11'))
                                    colocarCheck(aportes3.dic, $('#chkapo3-12'))
                                },
                            })
                        }

                        $.ajax({
                            data: 'cod=' + $('#txtcodigo').val(),
                            url: 'procesos/obtenerDatosReunion.php',
                            type: 'post',
                            success: (res) => {
                                data = jQuery.parseJSON(res)
                                
                                colocarCheck(data.r1, $('#chkreunion-1'))
                                colocarCheck(data.r2, $('#chkreunion-2'))
                                colocarCheck(data.r3, $('#chkreunion-3'))
                                colocarCheck(data.r4, $('#chkreunion-4'))
                                colocarCheck(data.r5, $('#chkreunion-5'))
                                colocarCheck(data.r6, $('#chkreunion-6'))
                                colocarCheck(data.r7, $('#chkreunion-7'))
                                colocarCheck(data.r8, $('#chkreunion-8'))
                                colocarCheck(data.r9, $('#chkreunion-9'))
                                colocarCheck(data.r10, $('#chkreunion-10'))
                                colocarCheck(data.r11, $('#chkreunion-11'))
                                colocarCheck(data.r12, $('#chkreunion-12'))

                                colocarCheck(data.rm1, $('#chkrv-1'))
                                colocarCheck(data.rm2, $('#chkrv-2'))
                                colocarCheck(data.rm3, $('#chkrv-3'))

                                colocarCheck(data.k1, $('#chkkm-1'))
                                colocarCheck(data.k2, $('#chkkm-2'))
                                colocarCheck(data.k3, $('#chkkm-3'))
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

    
    //Funciones para optimizar el codigo
    function colocarCheck (valor, idcheck) {
        if (valor === 'p') {
            $(idcheck).prop('checked', true)
            //$(idcheck).prop('disabled', true)
        } else {
            $(idcheck).prop('checked', false)
            //$(idcheck).prop('disabled', false)
        }
    }

    function cambiarCheck (ck1, ck2, ck3, ck4, ck5, ck6, ck7, ck8, ck9, ck10, ck11, ck12, estado) {
        ck1.prop('checked', estado)
        ck2.prop('checked', estado)
        ck3.prop('checked', estado)
        ck4.prop('checked', estado)
        ck5.prop('checked', estado)
        ck6.prop('checked', estado)
        ck7.prop('checked', estado)
        ck8.prop('checked', estado)
        ck9.prop('checked', estado)
        ck10.prop('checked', estado)
        ck11.prop('checked', estado)
        ck12.prop('checked', estado)
    }
})