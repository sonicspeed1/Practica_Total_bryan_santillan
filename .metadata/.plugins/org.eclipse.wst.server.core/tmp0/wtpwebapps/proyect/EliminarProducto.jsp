<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.producto.negocio.*"%>
<%
try {
    clsproducto n = new clsproducto();
    int id = Integer.parseInt(request.getParameter("cod"));
    if (n.eliminarProducto(id)) {
        response.sendRedirect("vendedor1.jsp");
    } else {
        out.print("Error al eliminar el producto.");
    }
} catch (NumberFormatException e) {
    out.print("Código de producto no válido.");
} catch (Exception e) {
    out.print("Ocurrió un error: " + e.getMessage());
}
%>