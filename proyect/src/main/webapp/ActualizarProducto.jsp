<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="com.producto.negocio.*"%>
<%
clsproducto n = new clsproducto();
int id = Integer.parseInt(request.getParameter("cod"));
int id2 = Integer.parseInt(request.getParameter("cat"));
String nombre = request.getParameter("nombre");
int cantidad = Integer.parseInt(request.getParameter("cantidad"));
double precio = Double.parseDouble(request.getParameter("precio"));
String foto = request.getParameter("foto");
String mensaje = "";

if (n.modificarProducto(id, id2, nombre, cantidad, precio, "C:/" + foto)) {
    response.sendRedirect("vendedor1.jsp");
} else {
    mensaje = "No está actualizado";
    response.sendRedirect("modificar.jsp?cod=" + id + "&cat=" + id2 + "&nombre=" + nombre + "&cantidad=" + cantidad + "&precio=" + precio + "&mensaje=" + java.net.URLEncoder.encode(mensaje, "UTF-8"));
}
%>
