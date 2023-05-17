$(document).ready(() => {
    seleccionarMesEnCurso()

    $('#btn-registrar').click((event) => {
        event.preventDefault()
        registrarAsistencia()
    })
    $('#form-reunion').submit((event) => {
        event.preventDefault()
        //registrarAsistencia()
    })
    $('#btn-buscar').click(() => {
        $('#popup-buscar').addClass('activo')
        $('#overlay-popup').addClass('activo')
    })
    $('#btn-cerrar-popup').click(() => {
        $('#popup-buscar').removeClass('activo')
        $('#overlay-popup').removeClass('activo')
    })
    /*$('#overlay-popup').click(() => {
        $('#popup-buscar').removeClass('activo')
        $('#overlay-popup').removeClass('activo')
    })*/
    $('#txtcodigo').on('keyup', () => {
        if ($('#txtcodigo').val() !== '') {
            $.ajax({
                data: 'txtcodigo=' + $('#txtcodigo').val(),
                url: 'procesos/obtenerDatosBen.php',
                type: 'post',
                success: (respuesta) => {
                    beneficiario = jQuery.parseJSON(respuesta)
                    console.log(beneficiario)
                    if(beneficiario !== false) {
                        $('#lblnombres').html(`${beneficiario.nombres} ${beneficiario.paterno} ${beneficiario.materno}`)
                    } else {
                        $('#lblnombres').html(' -codigo no registrado-')
                    }
                }
            })
        }
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

    $.ajax({
        data: '',
        url: 'procesos/obtener-listaben-seleccionar.php',
        type: 'post',
        success: (res) => {
            $('#contenedor-lista').html(res)
        }
    })
})


const codigo = $('#txtcodigo')
const mes = $('#cmbmes')
function registrarAsistencia() {
    alertify.set('notifier','position', 'top-right');
    if (codigo.val() !== '') {
        $.ajax({
            data: 'cod=' + codigo.val() + '&mes=' + mes.val(),
            url: 'procesos/registrar-asistencia.php',
            type: 'post',
            success: (respuesta) => {
                respuesta === 'Se registro asistencia'
                    ? alertify.success(respuesta)
                    : alertify.error(respuesta)
            },
        })
    } else {
        alertify.error('Ingrese codigo para buscar')
        codigo.focus()
    }
}

function seleccionarItem(item, nombres) {
    codigo.val(item)
    $('#lblnombres').html(nombres)
    $('#popup-buscar').removeClass('activo')
    $('#overlay-popup').removeClass('activo')
}

function seleccionarMesEnCurso() {
    const fecha = new Date()
    const mes = fecha.getMonth() + 1
    
    const valor = 'r' + mes
    $('#cmbmes').val(valor)
    console.log(valor)
}