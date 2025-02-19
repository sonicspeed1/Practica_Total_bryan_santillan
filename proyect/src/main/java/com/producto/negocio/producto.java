package com.producto.negocio;

import java.io.File;
import java.io.FileInputStream;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.producto.datos.Conexion;

public class producto {
	public String ingresarProducto(int id, int cat,String nombre, int cantidad, double precio, 
			String directorio)
			{
			String result="";
			Conexion con=new Conexion();
			String sql="INSERT INTO tb_producto (id_prod,id_cat,nombre,cantidad,precio,foto)VALUES(?,?,?,?,?,?)";
			PreparedStatement pr = null;
			try{
			pr=con.getConexion().prepareStatement(sql);
			pr.setInt(1,id);
			pr.setInt(2,cat);
			pr.setString(3, nombre);
			pr.setInt(4, cantidad);
			pr.setDouble(5, precio);
			File fichero=new File(directorio);
			FileInputStream streamEntrada=new FileInputStream(fichero);
			pr.setBinaryStream(6, streamEntrada,(int)fichero.length());
			if(pr.executeUpdate()==1)
			{
			result="Inserción correcta";
			}
			else
			{
			result="Error en inserción";
			}
			}
			catch(Exception ex)
			{
			result=ex.getMessage();
			}
			finally
			{
			try
			{
			pr.close();
			con.getConexion().close();
			}
			catch(Exception ex)
			{
			System.out.print(ex.getMessage());
			}
			}
			return result;
			}
	public String consultarTodo() {
	    String sql = "SELECT * FROM tb_producto ORDER BY id_prod";
	    Conexion con = new Conexion();
	    String tabla = "<table border=2 class=\"tuk\"><th>ID</th><th>Producto</th><th>Cantidad</th><th>Precio</th>";
	    ResultSet rs = null;
	    rs = con.Consulta(sql);
	    try {
	        while (rs.next()) {
	            tabla += "<tr style='color: white; background-color: green;'><td>" + rs.getInt(1) + "</td>"
	                    + "<td>" + rs.getString(3) + "</td>"
	                    + "<td>" + rs.getInt(4) + "</td>"
	                    + "<td>" + rs.getDouble(5) + "</td>"
	                    + "</tr>";
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	        System.out.print(e.getMessage());
	    }
	    tabla += "</table>";
	    return tabla;
	}
	public String consultarTodovendedor() {
	    String sql = "SELECT * FROM tb_producto ORDER BY id_prod";
	    Conexion con = new Conexion();
	    String tabla = "<table border=2 class=\"tuk\"><th>ID</th><th>Producto</th><th>Cantidad</th><th>Precio</th><th>Modificar</th><th>Eliminar</th>";
	    ResultSet rs = null;
	    rs = con.Consulta(sql);
	    try {
	        while (rs.next()) {
	            tabla += "<tr style='color: white; background-color: green;'><td>" + rs.getInt(1) + "</td>"
	                    + "<td>" + rs.getString(3) + "</td>"
	                    + "<td>" + rs.getInt(4) + "</td>"
	                    + "<td>" + rs.getDouble(5) + "</td>"
	                    + "<td><a href=\"ModificarProducto.jsp?cod=" + rs.getInt(1)+ "\">Modificar</a></td>"
	                    + "<td><a href=\"EliminarProducto.jsp?cod=" + rs.getInt(1)+ "\">Eliminar</a></td>"
	                    + "</tr>";
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	        System.out.print(e.getMessage());
	    }
	    tabla += "</table>";
	    return tabla;
	}
	public String buscarProductoCategoria(int cat)
	{
	String sentencia="SELECT nombre, precio FROM tb_producto WHERE id_cat="+cat;
	Conexion con=new Conexion();
	ResultSet rs=null;
	String resultado="<table border=3>";
	try
	{
	rs=con.Consulta(sentencia);
	while(rs.next())
	{
	resultado+="<tr style='color: white; background-color: green;'><td>"+ rs.getString(1)+"</td>"
	 + "<td>"+rs.getDouble(2)+"</td></tr>";
	}
	resultado+="</table>";
	}
	catch(SQLException e)
	{
	System.out.print(e.getMessage());
	}
	System.out.print(resultado);
	return resultado;
	}
	 public String consultarProductos() {
	        String sql = "SELECT id_prod, nombre, precio FROM tb_producto GROUP BY id_prod";
	        Conexion con = new Conexion();
	        StringBuilder tabla = new StringBuilder("<table class='table table-striped'><th>Producto</th><th>Precio</th><th>Añadir al carrito</th>");
	        ResultSet rs = null;
	        rs = con.Consulta(sql);
	        try {
	            while (rs.next()) {
	                int id = rs.getInt(1);
	                String nombre = rs.getString(2);
	                double precio = rs.getDouble(3);
	                tabla.append("<tr><td>").append(nombre).append("</td>")
	                    .append("<td>").append(precio).append("</td>")
	                    .append("<td><input type='checkbox' name='productos' value='")
	                    .append(id).append("' data-precio='").append(precio).append("'></td></tr>");
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        tabla.append("</table>");
	        return tabla.toString();
	    }

}
