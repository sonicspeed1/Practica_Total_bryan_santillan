<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link href="stylesb.css"  rel="stylesheet">
</head>
<body>
<div class="imagen">
        <div class="contenido">
          <header class="cuadro">
                <h1 class=" titulo"> CARPICOOl</h1>
            </header>
        <form action="verificar_us.jsp" method="post">
         <h1 class="tm">Ingreso del Sistema</h1>
        <label class="tm">Usuario: <input type="text" name="usuario"></label>
        <label class="tm">Contraseña: <input type="password" name="contraseña"></label>
        <div class="tt">
        <input type="submit" value="Validar" >
        <input type="reset" value="Cancelar">
        </div>
         </form>
            <a href="registro.jsp" class="reg">Registrarse</a>
            </div>
        </div>
        <footer class="footer"> Para mas información llamar al numero: 023213123213</footer>

</body>
</html>