package src.main.java;
/**
 * Esta clase esta obligada a mantener una propiedad para identificar a cada producto
 * @author Edy Chay
 * @author Daniel Valdez
 *
 */

public class Producto {

	private int idProducto;
	private String descripcion;
	private String nombreProducto;
	private int cantidadInventario;
	private double precio;


	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	/**
	 * regresa el tipo de producto
	 * @return
	 */
	public int getCantidadInventario() {
		return cantidadInventario;
	}
	/**
	 * calcula la cantidad de inventario
	 * @param cantidadInventario
	 */
	
	public void setCantidadInventario(int cantidadInventario) {
		this.cantidadInventario = cantidadInventario;
	}
	/**
	 * regresa cantidad de inventario 
	 * @return
	 */



	/**
	 * parametros para nombreProducto, tipoProducto, Cantidadinventario y precio
	 * @param nombreProducto
	 * @param cantidadInventario
	 * @param precio
	 */
	
	

	public Producto(String nombreProducto, String descripcion,int cantidadInventario, double precio) {
		this.nombreProducto = nombreProducto;
		this.descripcion=descripcion;
		this.cantidadInventario = cantidadInventario;
		this.precio = precio;
	}
	
	/**
	 * Regresa el producto
	 * @return
	 */
	public int getIdProducto() {
		return idProducto;
	} 
	/**
	 * parametro para idProducto
	 * @param idProducto
	 */
	
	public void setIdProducto(int idProducto) {
		this.idProducto = idProducto;
	}
	/**
	 * regresa idProducto
	 * @return
	 */
	
	public String getNombreProducto() {
		return nombreProducto;
	}
	/**
	 * nombre producto, para llevar el control del producto
	 * @param nombreProducto
	 */

	public void setNombreProducto(String nombreProducto) {
		this.nombreProducto = nombreProducto;
	}
	/**
	 * regresa NombreProducto
	 * @return
	 */
	
	public double getPrecio() {
		return precio;
	}
	
	/**
	 * Precio del producto
	 * @param precio
	 */

	public void setPrecio(double precio) {
		this.precio = precio;
	}
	
	/**
	 *Regresa Precio 
	 */

	public String toString() {
		return "[Producto] Id de Producto=" + idProducto + ", Nombre=" + nombreProducto + ", Stock="
				+ cantidadInventario + ", Tipo de Producto=" + ", precio=" + precio;
	}

}
