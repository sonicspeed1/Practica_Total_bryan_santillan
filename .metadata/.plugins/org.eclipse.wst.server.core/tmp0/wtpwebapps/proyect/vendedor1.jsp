<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.producto.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mercado</title>
<link href="style.css", rel="stylesheet">
</head>
<body>
<div class="imagen">
        <div class="contenido">
          <header class="cuadro">
                <h1 class=" titulo"> CARPICOOl</h1>
            </header>
               <nav >   
                <ul class="do">
                <li class="option"> <a href="ingreso.jsp" class="lor">Ingreso de producto</a></li>
                <li class="option"> <a href="vendedor1.jsp" class="lor">Alterar Producto</a></li>
                 <li class="option"> <a href="cambiarcontraseña.jsp" class="lor">Cambiar Contraseña</a></li>
                <li class="option"> <a href="cerrarsesion.jsp" class="lor">Cerrar Sesion</a></li>
                </ul>
            </nav>
        <%producto p=new producto();
        out.print(p.consultarTodovendedor());
        String productId = request.getParameter("cod");
        %>
        
        </div>
        </div>     
        <footer class="footer">Para más información llamar al número: 023213123213</footer>
</body>
</html>