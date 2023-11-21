const btnConsultar = document.getElementById("btn-consultar")
const txtCodigo = document.getElementById("txtcodigo")
const lblSalida = document.getElementById("lblsalida")
const frmConsulta = document.querySelector("#frm-consulta")

$(frmConsulta).submit((event) => {
    event.preventDefault()
})

$(btnConsultar).click(() => {
    alertify.set('notifier','position', 'top-right');
    if ($(txtCodigo).val() === '' || $(txtCodigo).val() < 0) {
        alertify.error('Ingresa un dato válido')
    } else {
        $.ajax({
            data: 'ben=' + $(txtCodigo).val(),
            url: '../procesos/obtenerSaldoBen.php',
            type: 'post',
            success: (respuesta) => {
                if (respuesta === 'vacio') {
                    $(lblSalida).html('Codigo no registrado')
                } else {
                    $(lblSalida).html(respuesta)
                }
            }
        })
    }
})