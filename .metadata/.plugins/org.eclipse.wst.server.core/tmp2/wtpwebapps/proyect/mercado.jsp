<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.producto.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mercado</title>
<link href="stylesb.css", rel="stylesheet">
</head>
<body>
<div class="imagen">
        <div class="contenido">
          <header class="cuadro">
                <h1 class=" titulo"> CARPICOOl</h1>
            </header>
       
        <%producto p=new producto();
        out.print(p.consultarTodo());
        String productId = request.getParameter("cod");
        %>
        
        </div>
        </div>     
</body>
</html>