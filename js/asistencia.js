$(document).ready(() => {
    //$('#cmbmes').val('Mayo')

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
    $('#overlay-popup').click(() => {
        $('#popup-buscar').removeClass('activo')
        $('#overlay-popup').removeClass('activo')
    })

    $.ajax({
        data: '',
        url: 'procesos/obtener-listaben-seleccionar.php',
        type: 'post',
        success: (res) => {
            //$('#contenedor-lista').load(res)
            //console.log(res)
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

function seleccionarItem(item) {
    codigo.val(item)
    $('#popup-buscar').removeClass('activo')
    $('#overlay-popup').removeClass('activo')
}