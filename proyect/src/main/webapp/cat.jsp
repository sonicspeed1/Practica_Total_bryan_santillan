<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.producto.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Categoria</title>
<link href="style.css" rel="stylesheet">
</head>
<body>
<div class="imagen">
    <div class="contenido">
        <header class="cuadro">
            <h1 class="titulo">CARPICOOl</h1>
        </header>
        <form action="cat.jsp" method="post">
        <center>
            <label><h1>Ingrese la categoría:</h1> <input type="text" name="rcat"></label>
            <input type="submit" value="Ingresar">
            <input type="reset" value="Cancelar">
        </form>
      
        <%
            try {
                // Recuperar el valor del parámetro y validarlo
                String rcat = request.getParameter("rcat");
                if (rcat != null && !rcat.trim().isEmpty()) {
                    int id = Integer.parseInt(rcat);
                    producto p = new producto();
                    out.print(p.buscarProductoCategoria(id));
                } else {
                    out.print("Por favor, ingrese una categoría válida.");
                }
            } catch (NumberFormatException e) {
                out.print("Por favor, ingrese un número válido para la categoría.");
            } catch (Exception e) {
                out.print("Ocurrió un error: " + e.getMessage());
            }
        %>
        </center>
    </div>
</div>
<footer class="footer"> Para mas información llamar al numero: 023213123213</footer>
</body>
</html>