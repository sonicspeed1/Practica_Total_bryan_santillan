<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" session="true" import="com.producto.negocio.*" %>
<%
String usuario;
HttpSession sesion = request.getSession();
if (sesion.getAttribute("usuario") == null) {
%>
<jsp:forward page="login.jsp">
    <jsp:param name="error" value="Debe registrarse en el sistema."/>
</jsp:forward>
<%
} else {
    usuario = (String) sesion.getAttribute("usuario");
    int perfil = (Integer) sesion.getAttribute("perfil");
%>
<h1>Sitio Privado de Productos</h1>
<h4>Bienvenido <%= usuario %></h4>
<%
    usuario pag = new usuario();
    String menu = pag.mostrarMenu(perfil);
    out.print(menu);
    sesion.invalidate();
}
%>
