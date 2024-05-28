<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.producto.negocio.*" session="true"%>
<%
    String mensaje = null;
    usuario us = new usuario();
    String cont1 = request.getParameter("cont1");
    String cont2 = request.getParameter("cont2");
    HttpSession sesion = request.getSession(); 
    Integer id_us = (Integer) sesion.getAttribute("id_us");
    
    if (id_us != null) {
        if (cont1 != null && cont2 != null) {
            if (cont1.equals(cont2)) {
                if (us.cambio_contraseña(id_us, cont1)) {
                    mensaje = "Contraseña ingresada correctamente";
                } else {
                    mensaje = "Error al cambiar la contraseña. Intente de nuevo.";
                }
            } else {
                mensaje = "Las contraseñas no coinciden. Por favor, intente de nuevo.";
            }
        } else {
            mensaje = "Por favor, complete ambos campos de contraseña.";
        }
    } else {
        mensaje = "Usuario no autenticado. Inicie sesión nuevamente.";
    }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cambiar Contraseña</title>
<link href="style.css" rel="stylesheet">
</head>
<body>
<div class="imagen">
        <div class="contenido">
          <header class="cuadro">
                <h1 class=" titulo"> CARPICOOl</h1>
            </header>
            <div class="cuadro2">
<form action="cambiarcontraseña.jsp" method="post">
               <h1 > Cambiar Contraseña</h1><hr>
<label class="opt">Clave Nueva: <input type="password" name="txtcont2"/></label>
<label class="opt">Clave Repetir Clave: <input type="password" name="txtcont3"/></label><hr>
                       <input type="submit"  value="Enviar" class="opt">
                        <input type="reset"  value="Restablecer"  class="opt">
                        </form>
                           <%
            String errorMessage = request.getParameter("error");
            if (errorMessage != null && !errorMessage.isEmpty()) {
        %>
            <p style="color: red ;font-weight: bold;"><%= errorMessage %></p>
        <%
            }
        %>
            </div>  
            </div>
            </div>    
            <footer class="footer">Para más información llamar al número: 023213123213</footer>
</body>
</html>