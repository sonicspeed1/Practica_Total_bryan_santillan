<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link href="style.css"  rel="stylesheet">
</head>
<body>
<div class="imagen">
    <div class="contenido">
        <header class="cuadro">
            <h1 class="titulo">CARPICOOl</h1>
        </header>
        <div class="cuadro2">
        <form action="verificar_us.jsp" method="post">
            <h1 class="tm">Ingreso del Sistema</h1><hr>
            <label class="tm">Usuario: <input type="text" name="usuario"></label>
            <label class="tm">Contraseña: <input type="password" name="contraseña"></label>
            <div class="tt">
                <input type="submit" value="Validar">
                <input type="reset" value="Cancelar">
            </div><hr>
        </form>
       <center> <a href="registro.jsp" class="reg">Registrarse</a></center>
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