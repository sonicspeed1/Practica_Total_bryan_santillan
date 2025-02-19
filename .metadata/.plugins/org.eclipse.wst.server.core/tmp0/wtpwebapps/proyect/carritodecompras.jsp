<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.producto.negocio.*" import= "com.producto.datos.Conexion"
   import= "java.sql.ResultSet"  import= "java.sql.SQLException"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Carrito de Compras</title>
<link href="style.css" rel="stylesheet">
</head>
<body style="background-color:lightblue;">
    <div class="contenido">
        <header class="cuadro">
            <h1 class="titulo">CARPICOOl</h1>
        </header>
        <nav >   
                <ul class="do">
                 <li class="option"> <a href="#m" class="lor">Carrito de Compras</a></li>
                <li class="option"> <a href="cerrarsesion.jsp" class="lor">Cerrar Sesion</a></li>
                </ul>
            </nav>
         <div id="m">
        <form name="listadoProductos" action="carritodecompras.jsp" method="post">
            <%
                producto producto = new producto();
                String tabla = producto.consultarProductos();
                out.print(tabla);
            %>
            <p>
                <input type="submit" name="button" id="button" value="Enviar"/>
            </p>
        </form>
        <h2>Mi carrito</h2>
        <img src="media/carrito.jpg" width="80" height="100" alt="carrito de compras" />

        <ul>
            <%
                String[] elementos = request.getParameterValues("productos"); 
                double totalCompra = 0.0;
                List<String> listaElementos = (List<String>)session.getAttribute("carrito");
                if (listaElementos == null) {
                    listaElementos = new ArrayList<>();
                    session.setAttribute("carrito", listaElementos);
                }
                if (elementos != null) {
                    for (String elemento : elementos) {
                        listaElementos.add(elemento);
                    }
                }
                for (String elemento : listaElementos) {
                    int productoId = Integer.parseInt(elemento);
                    String sql = "SELECT nombre, precio FROM tb_producto WHERE id_prod = " + productoId;
                    Conexion con = new Conexion();
                    ResultSet rs = con.Consulta(sql);
                    try {
                        if (rs.next()) {
                            String nombre = rs.getString("nombre");
                            double precio = rs.getDouble("precio");
                            totalCompra += precio;
                            out.println("<li>" + nombre + " - $" + precio + "</li>");
                        }
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }
                out.println("<li><strong>Total: $" + totalCompra + "</strong></li>");
            %>
            
        </ul>
        </div>
    </div>
</body>
</html>