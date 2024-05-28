<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" import="com.producto.negocio.*"%>
<%
usuario usuario = new usuario();
String nlogin = request.getParameter("usuario");
String nclave = request.getParameter("contraseña");
HttpSession sesion = request.getSession(); 
boolean respuesta = usuario.verificarUsuario(nlogin, nclave);
if (respuesta) {
    sesion.setAttribute("usuario", usuario.getNombre()); 
    sesion.setAttribute("perfil", usuario.getPerfil()); 
    sesion.setAttribute("id_us",usuario.getId_us());
    response.sendRedirect("menu.jsp"); 
} else {
    response.sendRedirect("login.jsp?error=Datos%20incorrectos.%20Vuelva%20a%20intentarlo.");
}
%>