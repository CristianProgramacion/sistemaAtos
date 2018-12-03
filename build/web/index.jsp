
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Login</title>
        <%@include file="complementos/headerlogin.jsp" %>
        
        
</head>
<body class="cover">
	<div class="container-login">
		<p class="text-center" style="font-size: 80px;">
			<i class="zmdi zmdi-account-circle"></i>
		</p>
		<p class="text-center text-condensedLight">Ingresa a tu cuenta</p>
		<form>
			<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
			    <input class="mdl-textfield__input" type="text" id="userName">
			    <label class="mdl-textfield__label" for="userName">Usuario</label>
			</div>
			<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
			    <input class="mdl-textfield__input" type="password" id="pass">
			    <label class="mdl-textfield__label" for="pass">Contraseña</label>
			</div>
                    <button id="Ingresar" class="mdl-button mdl-js-button mdl-js-ripple-effect" style="color: #3F51B5; float:right;">
				Ingresar <i class="zmdi zmdi-mail-send"></i>
			</button>
                    
                    <!---->
                    
		</form>
	</div>
    
       
        
</body>
</html>