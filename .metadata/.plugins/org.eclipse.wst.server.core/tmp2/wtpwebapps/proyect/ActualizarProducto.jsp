<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.producto.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
clsproducto n=new clsproducto();
int id = Integer.parseInt(request.getParameter("cod"));
int id2 = Integer.parseInt(request.getParameter("cat"));
String nombre = request.getParameter("nombre");
int cantidad = Integer.parseInt(request.getParameter("cantidad"));
double precio = Double.parseDouble(request.getParameter("precio"));
String  foto = request.getParameter("foto");
String resultado = n.modificarProducto(id,id2,nombre, cantidad, precio,"C:/"+foto);
%>
</body>
</html>

