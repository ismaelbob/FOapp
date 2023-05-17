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
                            $('.fila-apo1 input[type="checkbox"]').prop('disabled', false)
                            $('.fila-apo2 input[type="checkbox"]').prop('disabled', true)
                            $('.fila-apo3 input[type="checkbox"]').prop('disabled', true)
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
                            $('.fila-apo1 input[type="checkbox"]').prop('disabled', false)
                            $('.fila-apo2 input[type="checkbox"]').prop('disabled', false)
                            $('.fila-apo3 input[type="checkbox"]').prop('disabled', true)
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

                            $('.fila-apo1 input[type="checkbox"]').prop('disabled', false)
                            $('.fila-apo2 input[type="checkbox"]').prop('disabled', false)
                            $('.fila-apo3 input[type="checkbox"]').prop('disabled', false)
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

                        $('.fila-participaciones input[type="checkbox"]').prop('disabled', false)
                    } else {
                        alertify.set('notifier','position', 'top-right');
                        alertify.error('El codigo ingresado, no existe')
                        $('#txtcodigo').focus()
                        $('input[type="checkbox"]').prop('disabled', true)
                    }
                },
            })
        } else {
            alertify.set('notifier','position', 'top-right');
            alertify.error('Ingrese un codigo para buscar')
            $('#txtcodigo').focus()
            $('input[type="checkbox"]').prop('disabled', true)
        }
    })


    $('#chkapo1-1').click(() => {actualizarAporteEnBD($('#chkapo1-1'), aportes1)})
    $('#chkapo1-2').click(() => {actualizarAporteEnBD($('#chkapo1-2'), aportes1)})
    $('#chkapo1-3').click(() => {actualizarAporteEnBD($('#chkapo1-3'), aportes1)})
    $('#chkapo1-4').click(() => {actualizarAporteEnBD($('#chkapo1-4'), aportes1)})
    $('#chkapo1-5').click(() => {actualizarAporteEnBD($('#chkapo1-5'), aportes1)})
    $('#chkapo1-6').click(() => {actualizarAporteEnBD($('#chkapo1-6'), aportes1)})
    $('#chkapo1-7').click(() => {actualizarAporteEnBD($('#chkapo1-7'), aportes1)})
    $('#chkapo1-8').click(() => {actualizarAporteEnBD($('#chkapo1-8'), aportes1)})
    $('#chkapo1-9').click(() => {actualizarAporteEnBD($('#chkapo1-9'), aportes1)})
    $('#chkapo1-10').click(() => {actualizarAporteEnBD($('#chkapo1-10'), aportes1)})
    $('#chkapo1-11').click(() => {actualizarAporteEnBD($('#chkapo1-11'), aportes1)})
    $('#chkapo1-12').click(() => {actualizarAporteEnBD($('#chkapo1-12'), aportes1)})

    $('#chkapo2-1').click(() => {actualizarAporteEnBD($('#chkapo2-1'), aportes2)})
    $('#chkapo2-2').click(() => {actualizarAporteEnBD($('#chkapo2-2'), aportes2)})
    $('#chkapo2-3').click(() => {actualizarAporteEnBD($('#chkapo2-3'), aportes2)})
    $('#chkapo2-4').click(() => {actualizarAporteEnBD($('#chkapo2-4'), aportes2)})
    $('#chkapo2-5').click(() => {actualizarAporteEnBD($('#chkapo2-5'), aportes2)})
    $('#chkapo2-6').click(() => {actualizarAporteEnBD($('#chkapo2-6'), aportes2)})
    $('#chkapo2-7').click(() => {actualizarAporteEnBD($('#chkapo2-7'), aportes2)})
    $('#chkapo2-8').click(() => {actualizarAporteEnBD($('#chkapo2-8'), aportes2)})
    $('#chkapo2-9').click(() => {actualizarAporteEnBD($('#chkapo2-9'), aportes2)})
    $('#chkapo2-10').click(() => {actualizarAporteEnBD($('#chkapo2-10'), aportes2)})
    $('#chkapo2-11').click(() => {actualizarAporteEnBD($('#chkapo2-11'), aportes2)})
    $('#chkapo2-12').click(() => {actualizarAporteEnBD($('#chkapo2-12'), aportes2)})

    $('#chkreunion-1').click(() => {actualizarParticipacionEnBD($('#chkreunion-1'), data)})
    $('#chkreunion-2').click(() => {actualizarParticipacionEnBD($('#chkreunion-2'), data)})
    $('#chkreunion-3').click(() => {actualizarParticipacionEnBD($('#chkreunion-3'), data)})
    $('#chkreunion-4').click(() => {actualizarParticipacionEnBD($('#chkreunion-4'), data)})
    $('#chkreunion-5').click(() => {actualizarParticipacionEnBD($('#chkreunion-5'), data)})
    $('#chkreunion-6').click(() => {actualizarParticipacionEnBD($('#chkreunion-6'), data)})
    $('#chkreunion-7').click(() => {actualizarParticipacionEnBD($('#chkreunion-7'), data)})
    $('#chkreunion-8').click(() => {actualizarParticipacionEnBD($('#chkreunion-8'), data)})
    $('#chkreunion-9').click(() => {actualizarParticipacionEnBD($('#chkreunion-9'), data)})
    $('#chkreunion-10').click(() => {actualizarParticipacionEnBD($('#chkreunion-10'), data)})
    $('#chkreunion-11').click(() => {actualizarParticipacionEnBD($('#chkreunion-11'), data)})
    $('#chkreunion-12').click(() => {actualizarParticipacionEnBD($('#chkreunion-12'), data)})

    $('#chkrv-1').click(() => {actualizarParticipacionEnBD($('#chkrv-1'), data)})
    $('#chkrv-2').click(() => {actualizarParticipacionEnBD($('#chkrv-2'), data)})
    $('#chkrv-3').click(() => {actualizarParticipacionEnBD($('#chkrv-3'), data)})
    $('#chkkm-1').click(() => {actualizarParticipacionEnBD($('#chkkm-1'), data)})
    $('#chkkm-2').click(() => {actualizarParticipacionEnBD($('#chkkm-2'), data)})
    $('#chkkm-3').click(() => {actualizarParticipacionEnBD($('#chkkm-3'), data)})
    
    //Funciones para optimizar el codigo
    function colocarCheck (valor, idcheck) {
        if (valor === 'p') {
            $(idcheck).prop('checked', true)
        } else {
            $(idcheck).prop('checked', false)
        }
    }

    function actualizarAporteEnBD (chk, idapo) {
        alertify.set('notifier','position', 'top-right');
        alertify.set('notifier','delay', 10);
        if($(chk).prop('checked')) {
            $.ajax({
                data: 'idaporte=' + idapo.idaporte + '&valor=p&mes=' + $(chk).val(),
                url: 'procesos/registrar-apo.php',
                type: 'post',
                success: (res) => {
                    if(res !== 'falta') {
                        alertify.success(res)
                    } else {
                        alertify.error('Faltan datos de beneficiario')
                    }
                },
            })
        } else {
            $.ajax({
                data: 'idaporte=' + idapo.idaporte + '&valor=f&mes=' + $(chk).val(),
                url: 'procesos/registrar-apo.php',
                type: 'post',
                success: (res) => {
                    if(res !== 'falta') {
                        alertify.success(res)
                    } else {
                        alertify.error('Faltan datos de beneficiario')
                    }
                },
            })
        }
    }
    function actualizarParticipacionEnBD (chk, idparticipacion) {
        alertify.set('notifier','position', 'top-right');
        alertify.set('notifier','delay', 10);
        if($(chk).prop('checked')) {
            $.ajax({
                data: 'idparticipacion=' + idparticipacion.idtarjeta + '&valor=p&mes=' + $(chk).val(),
                url: 'procesos/registrar-reunion.php',
                type: 'post',
                success: (res) => {
                    if(res !== 'falta') {
                        alertify.success(res)
                    } else {
                        alertify.error('Faltan datos de beneficiario')
                    }
                },
            })
        } else {
            $.ajax({
                data: 'idparticipacion=' + idparticipacion.idtarjeta + '&valor=f&mes=' + $(chk).val(),
                url: 'procesos/registrar-reunion.php',
                type: 'post',
                success: (res) => {
                    if(res !== 'falta') {
                        alertify.success(res)
                    } else {
                        alertify.error('Faltan datos de beneficiario')
                    }
                },
            })
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


    $('input[type="checkbox"]').prop('disabled', true) //Luego de cargar pagina, inhabilita los checkbox

    $.ajax({
        data: '',
        url: 'procesos/obtener-listaben-seleccionar.php',
        type: 'post',
        success: (res) => {
            $('#contenedor-lista').html(res)
        }
    })
    $('#btn-buscar').click(() => {
        $('#popup-buscar').addClass('activo')
        $('#overlay-popup').addClass('activo')
    })
    $('#btn-cerrar-popup').click(() => {
        $('#popup-buscar').removeClass('activo')
        $('#overlay-popup').removeClass('activo')
    })
    $('#txtbusqueda').on('keyup', () => {
        $.ajax({
            data: 'buscar=' + $('#txtbusqueda').val(),
            url: 'procesos/buscar-ben-tabla.php',
            type: 'post',
            success: (respuesta) => {
                $('#contenedor-lista').html(respuesta)
            },
        })
    })
    
})

function seleccionarItem(item, nombres) {
    $('#txtcodigo').val(item)
    $('#popup-buscar').removeClass('activo')
    $('#overlay-popup').removeClass('activo')
}