<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.producto.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Respuesta</title>
</head>
<body>
<%
    String rCodigo = request.getParameter("rCodigo");
    String rCategoria = request.getParameter("rCategoria");
    String rNombre = request.getParameter("rNombre");
    String rCantidad = request.getParameter("rCantidad");
    String rPrecio = request.getParameter("rPrecio");
    String rFoto = request.getParameter("rFoto");
        producto p = new producto();
        String resultado = p.ingresarProducto(Integer.parseInt(rCodigo), Integer.parseInt(rCategoria), rNombre, Integer.parseInt(rCantidad), Double.parseDouble(rPrecio), "C:/"+rFoto);
        out.print(resultado);
        %>
</body>
</html>