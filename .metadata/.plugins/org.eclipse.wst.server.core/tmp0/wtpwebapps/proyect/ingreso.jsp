<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ingreso Producto</title>
<link href="style.css" rel="stylesheet">
</head>
<body>
<div class="imagen">
    <div class="contenido">
        <header class="cuadro">
            <h1 class="titulo">CARPICOOl</h1>
        </header>
        <nav>
            <ul class="do">
                <li class="option"><a href="ingreso.jsp" class="lor">Ingreso de producto</a></li>
                <li class="option"><a href="vendedor1.jsp" class="lor">Alterar Producto</a></li>
                <li class="option"><a href="cambiarcontraseña.jsp" class="lor">Cambiar Contraseña</a></li>
                <li class="option"><a href="cerrarsesion.jsp" class="lor">Cerrar Sesion</a></li>
            </ul>
        </nav>
        <div class="cuadro2">
            <h2>Registro del producto</h2>
            <hr>
            <form action="respuesta.jsp" method="post">
                <label class="opt">Codigo: <input type="text" name="rCodigo" required></label>
                <label class="opt">Categoria: <input type="text" name="rCategoria" required></label>
                <label class="opt">Nombre: <input type="text" name="rNombre" required></label>
                <label class="opt">Cantidad:<input type="text" name="rCantidad" required></label>
                <label class="opt">Precio:<input type="text" name="rPrecio" required></label>
                <label class="opt">Foto: <input type="file" name="rFoto" accept=".jpg, .jpeg, .png"></label>
                <hr>
                <input type="submit" value="Guardar">
                <input type="reset" value="Cancelar">
            </form>
            <%
                String errorMessage = request.getParameter("error");
                if (errorMessage != null && !errorMessage.isEmpty()) {
            %>
                <p style="color: red; font-weight: bold;"><%= errorMessage %></p>
            <%
                }
                String successMessage = request.getParameter("success");
                if (successMessage != null && !successMessage.isEmpty()) {
            %>
                <p style="color: green; font-weight: bold;"><%= successMessage %></p>
            <%
                }
            %>
        </div>
    </div>
</div>
<footer class="footer">Para más información llamar al número: 023213123213</footer>
</body>
</html>