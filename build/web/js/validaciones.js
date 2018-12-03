jQuery.validator.setDefaults({
  debug: true,
  success: "valid"
});

$(function () {
    $("#frm-registrar").validate({
        errorClass: 'errors',
        rules: {
            nomTrabajador: {
                required: true
            },
            
            celTrabajador:{
                required: true
            },
            
         
            emailTrabajador:{
              required: true,
              email: true
            },
            
            userNameOutside:{
                required: true 
            },
            
            passOutside:{
                required: true,
                minlength:8,
                maxlength:20
            },
            
            passOutside2:{
              required: true,
              equalTo: "#passOutside"
            }
        },
        messages: {
            nomTrabajador: {
                required: "El nombre es obligatorio"
            },
            
            celTrabajador:{
                required: "El celular del outside es obligatorio"
            },
          

            emailTrabajador:{
              required: "El email del outside es obligatorio",
              email: "No es valido el email"
            },
            
            userNameOutside:{
                required: "El usuario no puede estar vacío"
            },
            
            passOutside:{
                required: "La contraseña no puede estar vacío",
                minlength:"La contraseña debe tener como mínimo 8 caracteres",
                maxlength:"La contraseña debe de tener como máximo 20 caracteres"
            },
            
            passOutside2:{
                required: "La contraseña no puede estar vacío",
                equalTo: "Ambas contraseñas no son iguales"
            }
            
        },
        
        // NB: This is the default behaviour, so isn't really required:
    submitHandler: function(form) {
        //form.submit();
        //funcion ajax
        var data = $("#frm-registrar").serialize();
        //console.log(data);
        $.post("registrarOutside", data, function (res, est, jqXHR){
             alert(res);
             //limpiar cajas
             
            $("#nomTrabajador").val("");
            $("#celTrabajador").val("");
            $("#emailTrabajador").val("");
            $("#userNameOutside").val("");
            $("#passOutside").val("");
            $("#passOutside2").val("");
          
            
            
            
            
            
            
            
            
            
             
        });
    }
    /*
    // Called when the element is invalid:
    highlight: function(element) {
        $(element).css('background', '#ffdddd');
    },
    
    // Called when the element is valid:
    unhighlight: function(element) {
        $(element).css('background', '#ffffff');
    }
        */
        
    });
});