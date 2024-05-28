<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"   import="com.producto.negocio.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CarpiCool</title>
<link href="estilos.css", rel="stylesheet",text="text/css">
</head>
<body>
    <div class="imagen">
        <div class="contenido">
            <header class="cuadro">
                <h1 class=" titulo"> CARPICOOl</h1>
            </header>
            <nav >   
                <ul class="do">
                <li class="option"> <a href="#m1" class="lor">Informacion</a>
                </li>
                <li class="option"> <a href="#m2" class="lor">Registro</a></li>
                <li class="option"> <a href="#m3" class="lor">Ingreso de productos</a></li>
                <li class="option"> <a href="#m4" class="lor">mercado</a></li>
                <li class="option"> <a href="#m5" class="lor">Buscar producto</a></li>
                </ul>
            </nav>
        </div>
        <div id="m1" class="mensaje">Quienes Somos</div>
        <div id="m2" class="mensaje">
            <div class="cuadro2">
                <label class="opt"> Nombre: <input type=”text” name=”txtNombre”/> </label>
                <label class="opt"> Cedula: <input type=”text” name=”txtCedula”/></label>  
                <label class="opt"> Estado Civil: <select name="cmbECivil">  
                    <option value="Soltero">Soltero</option> 
                    <option value="Casado">Casado</option> 
                   <option value="Divorciado">Divorciado</option> 
                    <option value="Viudo">Viudo</option> 
                       </select> </label>    
                       <label class="opt">Residencia:
                        <input type="radio" name="rdResidencia" value="Sur"/>Sur   
                        <input type="radio" name="rdResidencia" value="Norte"/>Norte 
                        <input type="radio" name="rdResidencia" value="Centro"/>Centro </label> 
                        <label class="opt"> Foto:
                        <input type="file" name="fileFoto" accept=".jpg, .jpeg, .png"  />
                       </label>  
                       <label class="opt"> Mes y año de nacimiento <input type="month" name="fecha"/> 
                       </label>  
                       <label class="opt"> Color:
                        <input type="color"  name="color" value="red">
                       </label>
                       <p >
                        <input type="submit"  value="Enviar" >
                        <input type="reset"  value="Restablecer" ></p>
            </div>       
        </div> 
        <div id="m3" class="mensaje">
         <div class="cuadro2">
          <h2> Registro del producto</h2>
          <form action="respuesta.jsp" method="post">
        <label class="opt">Codigo: <input type="text" name="rCodigo"></label>
        <label class="opt">Categoria: <input type="text" name="rCategoria"></label>
        <label class="opt">Nombre: <input type="text" name="rNombre"></label>
        <label class="opt">Cantidad:<input type="text" name="rCantidad"></label>
        <label class="opt">Precio:<input type="text" name="rPrecio"></label>
        <label class="opt">Foto: <input type="file" name="rFoto" accept=".jpg, .jpeg, .png"  /></label>
        <input type="submit" value="Guardar"/>
        <input type="reset" value="Cancelar"/>
        </form>
        </div>
        </div>
        <div id="m4" class="mensaje">
        <%producto p=new producto();
        out.print(p.consultarTodo());
        String productId = request.getParameter("cod");
        %>
        </div>
        <div id="m5" class="mensaje">
        <form action="categoria.jsp" method="post">
          <label> Pongala la categoria:<input type="text" name="rcat"></label>
          <input type="submit" value="Ingresar">
          <input type="reset" value="Cancelar">
        </form>
        </div>
        <footer class="footer"> Para mas información llamar al numero: 023213123213</footer>
</body>
</html>