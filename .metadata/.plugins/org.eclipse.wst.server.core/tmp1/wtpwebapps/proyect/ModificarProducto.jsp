<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.producto.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Modificar Producto</title>
</head>
<body>
    <h2>Modificar Producto</h2>
    <form action="ActualizarProducto.jsp" method="post">
        <input type="hidden" name="cod" value="<%= request.getParameter("cod") %>"><p><%= request.getParameter("cod") %> </p>
        categoria: <input type="text" name="cat" value="<%= request.getParameter("cat") %>"><br>
        Nombre: <input type="text" name="nombre" value="<%= request.getParameter("nombre") %>"><br>
        Cantidad: <input type="number" name="cantidad" value="<%= request.getParameter("cantidad") %>"><br>
        Precio: <input type="text" name="precio" value="<%= request.getParameter("precio") %>"><br>
        Foto:<input type="file" name="foto" accept=".jpg, .jpeg, .png"  /><br>
        <input type="submit" value="Actualizar">
    </form>
</body>
</html>
