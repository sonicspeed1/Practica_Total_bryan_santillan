<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="true" import="com.producto.negocio.*" %>
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
<link href="style.css"  rel="stylesheet">
<div class="imagen">
        <div class="contenido">
            <header class="cuadro">
                <h1 class=" titulo"> CARPICOOl</h1>
                </header>
<%
    usuario pag = new usuario();
    String menu = pag.mostrarMenu(perfil);
    out.print(menu);
    sesion.invalidate();
}
%>
</div>
</div>
<footer class="footer">Para más información llamar al número: 023213123213</footer>