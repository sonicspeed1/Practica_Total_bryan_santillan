<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.producto.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insersion</title>
</head>
<body>
<%
usuario u=new usuario();
String rnombre = request.getParameter("txtNombre");
String rcorreo= request.getParameter("txtCorreo");
int rtipo=Integer.parseInt(request.getParameter("perfil"));
out.print(u.ingreso_usuario(rnombre, rcorreo, rtipo));

%>
</body>
</html>