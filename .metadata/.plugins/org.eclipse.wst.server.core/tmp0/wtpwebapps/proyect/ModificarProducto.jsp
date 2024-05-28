<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Modificar Producto</title>
    <link href="style.css" rel="stylesheet">
</head>
<body>
<div class="imagen">
    <div class="contenido">
        <header class="cuadro">
            <h1 class="titulo">CARPICOOl</h1>
        </header>
        <div class="cuadro2">
            <h2>Modificar Producto</h2>
            <form action="ActualizarProducto.jsp" method="post">
                <input type="hidden" name="cod" value="<%= request.getParameter("cod") %>">
                <p><%= request.getParameter("cod") %></p>
                Categoria: <input type="text" name="cat" value="<%= request.getParameter("cat") %>"><br>
                Nombre: <input type="text" name="nombre" value="<%= request.getParameter("nombre") %>"><br>
                Cantidad: <input type="number" name="cantidad" value="<%= request.getParameter("cantidad") %>"><br>
                Precio: <input type="text" name="precio" value="<%= request.getParameter("precio") %>"><br>
                Foto: <input type="file" name="foto" accept=".jpg, .jpeg, .png"><br>
                <input type="submit" value="Actualizar">
                <%
                    String errorMessage = request.getParameter("mensaje");
                    if (errorMessage != null && !errorMessage.isEmpty()) {
                %>
                    <p style="color: red; font-weight: bold;"><%= errorMessage %></p>
                <%
                    }
                %>
            </form>
            <div></div>
        </div>
    </div>
</div>
<footer class="footer">Para más información llamar al número: 023213123213</footer>
</body>
</html>
