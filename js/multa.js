$(document).ready(function(){
    $("#txtcodigo-mul").focusout(function(){
        $.ajax({
            data: "txtcodigo=" + $("#txtcodigo-mul").val(),
            url: "procesos/obtenerDatosBen.php",
            type: "post",
            success: function(r){
                dato = jQuery.parseJSON(r);
                if(dato == false){
                    $("#error-codigo-mul").html("Codigo, no existe");
                    $("#error-codigo-mul").css("color", "red");
                    $("#error-codigo-mul").css("font-size", "12px");
                    $("#txtcodigo-mul").focus();
                    $("#btn-registrar-multa").attr("disabled", true);
                }else{
                    $("#txtnombres-mul").val(dato.nombres + " " +  dato.paterno + " " + dato.materno);
                    $("#error-codigo-mul").html("");
                    $("#btn-registrar-multa").attr("disabled", false);
                }
            }
        });
    });
    $("#cmbmotivo-mul").change(function(){
        if($("#cmbmotivo-mul").val() == "reunion"){
            $("#cmbmeses-mul").css("display", "block");
            $("#txtmonto-mul").val("0");
        }else{
            $("#cmbmeses-mul").css("display", "none");
        }
        if($("#cmbmotivo-mul").val() == "cocina"){
            $("#txtmonto-mul").val("30");
        }
        if($("#cmbmotivo-mul").val() == "kermesse"){
            $("#txtmonto-mul").val("20");
        }
        $("#chk-01-mul").attr("checked",false);
    });
    $("#btn-registrar-multa").click(function(){
        $.ajax({
            data: $("#frm-multa").serialize(),
            url: "procesos/registrar-mul.php",
            type: "post",
            beforeSend: function(){
                $("#overlay-procesando").css("visibility", "visible");
            },
            success: function(r){
                if(r == "correcto"){
                    alertify.success("Registrado correctamenre");
                    $("#overlay-procesando").css("visibility", "hidden");
                    $("#respuesta-mul").html("");
                    $("#btn-imprimir-multa").css("visibility","visible");
                    $("#btn-registrar-multa").attr("disabled", true);
                    
                    $("#frm-tarjeta-reunion")[0].reset();
                    ges = $("#cmbgestion-tabla").val();
                    codigo = $("#txtcodigo-panel").html();
                    buscarDatosReunion(codigo,ges);
                    cargarTablaMultasBeneficiario();
                }else{
                    $("#respuesta-mul").html(r);
                    $("#overlay-procesando").css("visibility", "hidden");
                }
            }
        });
    });

    $("#btn-imprimir-multa").click(function(){
        $.ajax({
            data: "ben=" + $("#txtcodigo-mul").val(),
            url: "reportes/rep-multa.php",
            type: "get",
            success: function(r){
                window.open("reportes/rep-multa.php" + "?ben=" + $("#txtcodigo-mul").val(), '_blanck')
                $("#overlay-multa").removeClass("activo");
                $("#popup-multa").removeClass("activo");
                $("#frm-multa")[0].reset();
                $("#respuesta-mul").html("");
                $("#cmbmeses-mul").css("display", "none");
                $("#btn-imprimir-multa").css("visibility","hidden");
                $("#btn-registrar-multa").attr("disabled", false);
                $("#cmbgestion-mul").attr("disabled", false);
            }
        });
    });

    $("#chk-01-mul").on("change", function(){
        aumentarMontoMulta(this);
    });
    $("#chk-02-mul").on("change", function(){
        aumentarMontoMulta(this);
    });
    $("#chk-03-mul").on("change", function(){
        aumentarMontoMulta(this);
    });
    $("#chk-04-mul").on("change", function(){
        aumentarMontoMulta(this);
    });
    $("#chk-05-mul").on("change", function(){
        aumentarMontoMulta(this);
    });
    $("#chk-06-mul").on("change", function(){
        aumentarMontoMulta(this);
    });
    $("#chk-07-mul").on("change", function(){
        aumentarMontoMulta(this);
    });
    $("#chk-08-mul").on("change", function(){
        aumentarMontoMulta(this);
    });
    $("#chk-09-mul").on("change", function(){
        aumentarMontoMulta(this);
    });
    $("#chk-10-mul").on("change", function(){
        aumentarMontoMulta(this);
    });
    $("#chk-11-mul").on("change", function(){
        aumentarMontoMulta(this);
    });
    $("#chk-12-mul").on("change", function(){
        aumentarMontoMulta(this);
    });
});
function imprimirMulta(rec){
    $.ajax({
        data: "rec=" + rec,
        url: "reportes/rep-aporte.php",
        type: "get",
        success: function(r){
            window.open("reportes/rep-multa.php" + "?rec=" + rec, '_black')
        }
    });
}
function anularMulta(rec){
    alertify.confirm(
        "Esta seguro de anular el recibo",
        function(){
            $.ajax({
                data: "rec=" + rec,
                url: "procesos/anular-recibomul.php",
                type: "post",
                beforeSend: function(){
                    $("#overlay-procesando").css("visibility", "visible");
                },
                success: function(r){
                    alert(r);
                    $("#overlay-procesando").css("visibility", "hidden");
                    if(r == "error"){
                        alertify.error("No se pudo anular");
                    }else{
                        alertify.success("Se anuló el recibo");
                        ges = $("#cmbgestion-tabla").val();
                        codigo = $("#txtcodigo-panel").html();
                        buscarDatosReunion(codigo,ges);
                        cargarTablaMultasBeneficiario();
                    }
                }
            });
        },
        function(){
            alertify.error("Cancelado");
        }
    );
}

// Funciones auxiliares
function aumentarMontoMulta(chk){
    monto = $("#txtmonto-mul").val();
    if($(chk).is(":checked")){
        $("#txtmonto-mul").val(parseInt(monto) + 10);
    }else{
        $("#txtmonto-mul").val(parseInt(monto) - 10);
    }
}
function limpiarCheck(id){
    id.each(function(){
        $(this).attr("checked",false);
    });
}