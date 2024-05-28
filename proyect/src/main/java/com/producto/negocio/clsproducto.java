package com.producto.negocio;
import java.io.File;
import java.io.FileInputStream;
import java.sql.PreparedStatement;

import com.producto.datos.Conexion;

public class clsproducto {
	public boolean modificarProducto(int id, int cat, String nombre, int cantidad, double precio, String directorio) {
	    boolean result =false;
	    Conexion con = new Conexion();
	    String sql = "UPDATE tb_producto SET id_cat=?, nombre=?, cantidad=?, precio=?, foto=? WHERE id_prod=?";
	    PreparedStatement pr = null;
	    try {
	        pr = con.getConexion().prepareStatement(sql);
	        pr.setInt(1, cat);
	        pr.setString(2, nombre);
	        pr.setInt(3, cantidad);
	        pr.setDouble(4, precio);
	        File fichero = new File(directorio);
	        FileInputStream streamEntrada = new FileInputStream(fichero);
	        pr.setBinaryStream(5, streamEntrada, (int) fichero.length());
	        pr.setInt(6, id);
	        if (pr.executeUpdate() == 1) {
	            result = true;
	        } else {
	            result = false;
	        }
	    } catch (Exception ex) {
	        result = false;
	    } finally {
	        try {
	            pr.close();
	            con.getConexion().close();
	        } catch (Exception ex) {
	            System.out.print(ex.getMessage());
	        }
	    }
	    return result;
	}
	public boolean eliminarProducto(int id) {
	    boolean result = false ;
	    Conexion con = new Conexion();
	    String sql = "DELETE FROM tb_producto WHERE id_prod=?";
	    PreparedStatement pr = null;
	    try {
	        pr = con.getConexion().prepareStatement(sql);
	        pr.setInt(1, id);
	        if (pr.executeUpdate() == 1) {
	        	result = true;
	        } else {
	        	result = false ;
	        }
	    } catch (Exception ex) {
	        result =false;
	    } finally {
	        try {
	            pr.close();
	            con.getConexion().close();
	        } catch (Exception ex) {
	            System.out.print(ex.getMessage());
	        }
	    }
	    return result;
	}
}
