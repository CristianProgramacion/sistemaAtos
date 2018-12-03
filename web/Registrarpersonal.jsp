<%-- 
    Document   : personal
    Created on : 02/12/2018, 09:44:12 PM
    Author     : CRISTIAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Administrador</title>
       
        
        <%@include file="complementos/headerTodasPaginas.jsp" %>
</head>
<body>
    
    
   
    <%@include  file="complementos/notificaciones.jsp" %>
        
        <%@include  file="complementos/barraLateral.jsp" %>
	
        <%@include file="complementos/barraVertical.jsp" %>
        
        
	<!-- pageContent -->
	<section class="full-width pageContent">
            
		<section class="full-width header-well">
			<div class="full-width header-well-icon">
				<i class="zmdi zmdi-account"></i>
			</div>
			<div class="full-width header-well-text">
				<p class="text-condensedLight">
					En este apartado solo se puede registrar solo los trabajadores que van a dar servicio a los usuarios de Enel.
				</p>
			</div>
		</section>
		<div class="mdl-tabs mdl-js-tabs mdl-js-ripple-effect">
			<div class="mdl-tabs__tab-bar">
				<a href="#tabNewAdmin" class="mdl-tabs__tab is-active">NUEVO</a>
				<a href="#tabListAdmin" class="mdl-tabs__tab">LISTAR</a>
			</div>
                    
                    
                    
                    
                    
			<div class="mdl-tabs__panel is-active" id="tabNewAdmin">
				<div class="mdl-grid">
					<div class="mdl-cell mdl-cell--4-col-phone mdl-cell--8-col-tablet mdl-cell--12-col-desktop">
						<div class="full-width panel mdl-shadow--2dp">
							<div class="full-width panel-tittle bg-primary text-center tittles">
								Nuevo Trabajador
							</div>
                                                    
                                                    
                                                    <form method="POST" id="frm-registrar" action="registrarOutside">
							<div class="full-width panel-content">
								
                                                            
                                                            
									<div class="mdl-grid">
										<div class="mdl-cell mdl-cell--4-col-phone mdl-cell--8-col-tablet mdl-cell--6-col-desktop">
											<h5 class="text-condensedLight">Datos del trabajador</h5>
											
											<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                                                                            <input class="mdl-textfield__input" type="text"  id="nomTrabajador" name="nomTrabajador">
                                                                                                <label class="mdl-textfield__label" for="NameAdmin">Nombre Trabador</label>
												
											</div>
											
											<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                                                                            <input class="mdl-textfield__input" type="tel" id="celTrabajador" name="celTrabajador">
                                                                                                <label class="mdl-textfield__label" for="phoneAdmin">Celular</label>
												
											</div>
											<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                                                                            <input class="mdl-textfield__input" type="email" id="emailTrabajador" name="emailTrabajador">
												<label class="mdl-textfield__label" for="emailAdmin">E-mail</label>
												
											</div>
											
										</div>
										<div class="mdl-cell mdl-cell--4-col-phone mdl-cell--8-col-tablet mdl-cell--6-col-desktop">
											<h5 class="text-condensedLight">Account Details</h5>
											<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                                                                            <input class="mdl-textfield__input" type="text"  id="userNameOutside" name="userNameOutside">
												<label class="mdl-textfield__label" for="UserNameAdmin">Usuario</label>
												
											</div>
											<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                                                                            <input class="mdl-textfield__input" type="password" id="passOutside" name="passOutside">
												<label class="mdl-textfield__label" for="passwordAdmin">Contraseña</label>
												
											</div>
											
                                                                                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                                                                            <input class="mdl-textfield__input" type="password"  id="passOutside2" name="passOutside2">
												<label class="mdl-textfield__label" for="passwordAdmin1">Repita su contraseña</label>
												
											</div>
										</div>
									</div>
									<p class="text-center">
                                                                            <button class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored bg-primary" type="submit" id="btnRegistrar">
											<i class="zmdi zmdi-plus"></i>
									    </button>
										
									</p>
								
							</div>
                                                        
                                                     </form>
						</div>
					</div>
				</div>
			</div>
                        
             
                    <%@include  file="ListarPersonal.jsp" %>
		</div>
           
	</section>
        
         
                <script src="js/validaciones.js"></script>
       
</body>
</html>