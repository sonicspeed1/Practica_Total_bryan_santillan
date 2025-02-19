<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="com.producto.negocio.*"%>
<%
    String rCodigo = request.getParameter("rCodigo");
    String rCategoria = request.getParameter("rCategoria");
    String rNombre = request.getParameter("rNombre");
    String rCantidad = request.getParameter("rCantidad");
    String rPrecio = request.getParameter("rPrecio");
    String rFoto = request.getParameter("rFoto");

    producto p = new producto();
    String resultado = p.ingresarProducto(
        Integer.parseInt(rCodigo), 
        Integer.parseInt(rCategoria), 
        rNombre, 
        Integer.parseInt(rCantidad), 
        Double.parseDouble(rPrecio), 
        "C:/" + rFoto
    );

    String mensaje;
    boolean exito;
    if ("Inserción correcta".equals(resultado)) {
        mensaje = "Inserción correcta del registro.";
        exito = true;
    } else {
        mensaje = "Datos incorrectos. Vuelva a intentarlo.";
        exito = false;
    }

    if (exito) {
        response.sendRedirect("ingreso.jsp?success=" + java.net.URLEncoder.encode(mensaje, "UTF-8"));
    } else {
        response.sendRedirect("ingreso.jsp?error=" + java.net.URLEncoder.encode(mensaje, "UTF-8"));
    }
%>