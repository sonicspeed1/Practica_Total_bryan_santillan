<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="True" import="com.producto.negocio.*" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Carrito de compras</title>
<link href="styles.css"  rel="stylesheet">
</head>
<body>
<div class="dl">
        <div class="contenido">
            <header class="cuadro">
                <h1 class=" titulo"> CARPICOOl</h1>
            </header>
            <nav >   
                <ul class="do">
                <li class="option"> <a href="#m" class="lor">Carrito de compras</a></li>
                <li class="option"> <a href="cerrarsesion.jsp" class="lor">Cerrar Session</a></li>
                </ul>
            </nav>
<div>
<form name="listadoProductos"action="carritodecompras.jsp">
<% producto producto=new producto();
 String tabla=producto.consultarProductos();
 out.print(tabla);
%>
<p>
<input type="submit" name="button" id="button" value="Enviar"/>
</p>
<h2>Mi carrito</h2>
<img src="media/carrito.jpg" width="80" height="100" alt="carrito de compras" />

<ul>
<%
String[] elementos=request.getParameterValues("productos"); 
int i=0;
List<String> listaElementos=(List<String>)session.getAttribute("carrito");
if(listaElementos == null)
{
	
listaElementos =new ArrayList<String>();
session.setAttribute("carrito", listaElementos);
}
if (elementos!=null)
{
while(i<elementos.length)
{
listaElementos.add(elementos[i]);
i++;
}
}
for (String tmp : listaElementos)
{
out.println("<li>" + tmp + "</li>");
}
%>
</ul>
</form>
</div>

</div>
</div>
</body>
</html>