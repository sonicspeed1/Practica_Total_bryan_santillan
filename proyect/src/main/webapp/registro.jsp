<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.producto.negocio.*"%>
<%
usuario us = new usuario();
String nombre = request.getParameter("txtNombre");
String correo = request.getParameter("txtCorreo");
String cont = request.getParameter("txtcont");
String error = "";

if (nombre != null && correo != null && cont != null) { // Asegurarse de que los parámetros no sean nulos
    if (us.ingreso_cliente(nombre, correo, cont)) {
        error = "Ingreso Correcto";
    } else {
        error = "Error de inserción";
    }
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registro</title>
<link href="style.css" rel="stylesheet">
</head>
<body>
<div class="imagen">
    <div class="contenido">
        <header class="cuadro">
            <h1 class="titulo">CARPICOOl</h1>
        </header>
        <div class="cuadro2">
            <h2>Registro Clientes</h2>
            <hr>
            <form action="registro.jsp" method="post">
                <label class="opt">Nombre: <input type="text" name="txtNombre" required /></label>
                <label class="opt">Correo: <input type="email" name="txtCorreo" required /></label>
                <label class="opt">Contraseña: <input type="password" name="txtcont" required /></label>
                <hr>
                <input type="submit" value="Enviar" class="opt">
                <input type="reset" value="Restablecer" class="opt">
            </form>
            <%
            if (!error.isEmpty()) {
            %>
                <p style="color: red; font-weight: bold;"><%= error %></p>
            <%
            }
            %>
        </div>  
    </div>
</div>    
<footer class="footer">Para más información llamar al número: 023213123213</footer>
</body>
</html>