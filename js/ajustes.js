$(document).ready(function(){
    $("#txtnombre-pas").attr("readonly", true);
    $("#btn-cambiar-pass").click(function(){
        $.ajax({
            data: $("#form-cambiar-pass").serialize(),
            url: "procesos/cambiar-password.php",
            type: "post",
            success: function(res){
                if(res == "correcto"){
                    alertify.success("Se cambio correctamente");
                    $("#form-cambiar-pass")[0].reset();
                    $("#respuesta-pas").html("");
                }else{
                    $("#respuesta-pas").html(res);
                }
            }
        });
    });
});