<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                <h1 class=" titulo"> CARPICOOl</h1>
            </header>
            <div class="cuadro2">
            <h2>Registro de vendedores/administrador</h2><hr>
<form action="ingresoad_ve.jsp" method="post">
                <label class="opt"> Nombre: <input type="text" name="txtNombre"/> </label>
                <label class="opt"> Correo: <input type="text"  name="txtCorreo"/></label>  
        <label for="perfil">Elige un perfil:</label>
        <select id="perfil1" name="perfil" class="opt">
        <option value="2"  >Vendedor</option>
        <option value="3"  >Administrador</option>
        </select><hr>  
                       <input type="submit"  value="Enviar" class="opt">
                        <input type="reset"  value="Restablecer"  class="opt">
                        </form>
            </div>  
            </div>
            </div>    
            <footer class="footer">Para más información llamar al número: 023213123213</footer>
</body>
</html>