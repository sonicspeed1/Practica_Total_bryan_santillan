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
out.print(n.eliminarProducto(id));
%>
</body>
</html>