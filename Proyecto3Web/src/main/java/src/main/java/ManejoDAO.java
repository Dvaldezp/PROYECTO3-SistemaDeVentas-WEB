package src.main.java;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ManejoDAO {

    public void grabarProducto() {
        try {
            Statement statement = VariablesGlobales.conn.createStatement();
            String nombre1 = "hola";
            Integer precio = 25;
            //String dml = "INSERT INTO factura(idfactura,idcliente) VALUES("+"3"+","+"39"+")";
            String dml = "INSERT INTO detallefactura(numerodefactura,idproducto,idfactura) VALUES("+"4"+","+"8"+","+"8"+")";
            //String dml = "INSERT INTO producto(nombre,descripcion,cantidad,precio) VALUES('"+nombre1+"','"+nombre1+"',"+precio+","+precio+")";
            //String dml = "INSERT INTO clienteindividual(nombre,apellido,direccion,dpi) VALUES('"+nombre1+"','"+nombre1+"','"+nombre1+"','"+nombre1+"')";
            //String dml = "INSERT INTO clienteempresa(nombre,direccion,contacto,descuento,sociedad) VALUES('" + nombre1 + "','" + nombre1 + "','" + nombre1 + "'," + precio + ",'" + nombre1 + "')";
            System.out.println("dml = " + dml);
            statement.executeUpdate(dml);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }




    public Producto grabarProducto(String nombre, String descripcion, int cantidad, double precio) {
        Producto producto=null;
        try {
            Statement statement = VariablesGlobales.conn.createStatement();
            producto=new Producto(nombre,descripcion,cantidad,precio);
            String dml = "INSERT INTO producto(nombre,descripcion,cantidad,precio) VALUES("+"'"+nombre+"',"+"'"+descripcion+"',"+cantidad+","+precio+")";
            System.out.println("dml = " + dml);
            statement.executeUpdate(dml);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return producto;
    }



    public Cliente_Individual grabarClienteIndi(String nombre, String apellido, String direccion, String dpi) {
        Cliente_Individual cliente=null;
        try {
            Statement statement = VariablesGlobales.conn.createStatement();
            cliente=new Cliente_Individual(1,nombre,apellido,direccion,dpi);
            String dml = "INSERT INTO clienteindividual(nombre,apellido,direccion,dpi) VALUES("+"'"+nombre+"',"+"'"+apellido+"',"+"'"+direccion+"',"+"'"+dpi+"'"+")";
            System.out.println("dml = " + dml);
            statement.executeUpdate(dml);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return cliente;
    }


    public Cliente_Empresa grabarClienteEmpre(String nombre, String direccion, String contacto,int descuento) {
        Cliente_Empresa cliente=null;
        try {
            Statement statement = VariablesGlobales.conn.createStatement();
            cliente=new Cliente_Empresa(1,nombre,"SA",direccion,contacto,descuento);
            String dml = "INSERT INTO clienteempresa(nombre,direccion,contacto,descuento,sociedad) VALUES("+"'"+nombre+"',"+"'"+direccion+"',"+"'"+contacto+"',"+
                    descuento+","+"'"+"sa"+"'"+")";
            System.out.println("dml = " + dml);
            statement.executeUpdate(dml);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return cliente;
    }


    public List<Cliente_Individual> getDBclienteindividual() {
        List<Cliente_Individual> clienteindi = new ArrayList<Cliente_Individual>();
        try {
            Statement statement = VariablesGlobales.conn.createStatement();
            String consulta = " SELECT codigoclienteindividual, nombre,apellido, direccion,dpi" +
                    " FROM clienteindividual";
            ResultSet rs = statement.executeQuery(consulta);
            while (rs.next()) {
                clienteindi.add(new Cliente_Individual(rs.getInt("codigoclienteindividual"), rs.getString("nombre"), rs.getString("apellido"), rs.getString("direccion"), rs.getString("dpi")));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return clienteindi;
    }


    public List<Producto> getDBproducto() {
        List<Producto> productos = new ArrayList<Producto>();
        try {
            Statement statement = VariablesGlobales.conn.createStatement();
            String consulta = "SELECT codigo,nombre,descripcion,cantidad,precio"+
                    " FROM producto";
            ResultSet rs = statement.executeQuery(consulta);
            while (rs.next()) {
                productos.add(new Producto(Integer.parseInt(rs.getString("codigo")),rs.getString("nombre"), rs.getString("descripcion"), Integer.parseInt(rs.getString("cantidad")),Double.parseDouble(rs.getString("precio"))));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return productos;
    }


    public List<Factura> getDBfactura() {
        List<Factura> facturas = new ArrayList<Factura>();
        try {
            Statement statement = VariablesGlobales.conn.createStatement();
            String consulta = "SELECT idfactura,idcliente"+
                    " FROM factura";
            ResultSet rs = statement.executeQuery(consulta);
            while (rs.next()) {
                facturas.add(new Factura(Integer.parseInt(rs.getString("idfactura")),Integer.parseInt(rs.getString("idcliente"))));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return facturas;
    }





    public Producto getDBproducto(int codigo) {

        Producto producto = null;
        try {
            Statement statement = VariablesGlobales.conn.createStatement();
            String consulta = "SELECT codigo,nombre,descripcion,cantidad,precio"+
                    " FROM producto";
            ResultSet rs = statement.executeQuery(consulta);
            while (rs.next()) {
                if (rs.getInt("codigo") == codigo) {

                    producto = new Producto(Integer.parseInt(rs.getString("codigo")),rs.getString("nombre"), rs.getString("descripcion"), Integer.parseInt(rs.getString("cantidad")),Double.parseDouble(rs.getString("precio")));
                }

            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return producto;

    }



    public Cliente_Individual getDBbuscarclienteIndi(int codigo) {

        Cliente_Individual cliente = null;
        try {
            Statement statement = VariablesGlobales.conn.createStatement();
            String consulta = " SELECT codigoclienteindividual, nombre,apellido, direccion,dpi" +
                    " FROM clienteindividual";
            ResultSet rs = statement.executeQuery(consulta);
            while (rs.next()) {
                if (rs.getInt("codigoclienteindividual") == codigo) {

                    cliente = new Cliente_Individual(rs.getInt("codigoclienteindividual"), rs.getString("nombre"), rs.getString("apellido"),
                            rs.getString("direccion"), rs.getString("dpi"));

                }

            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return cliente;

    }

    public Cliente_Empresa getDBbuscarclienteempre(int codigo) {

        Cliente_Empresa cliente = null;
        try {
            Statement statement = VariablesGlobales.conn.createStatement();
            String consulta = " SELECT codigoclienteempresa,nombre,direccion,contacto,descuento,sociedad" +
                    " FROM clienteempresa";
            ResultSet rs = statement.executeQuery(consulta);
            while (rs.next()) {
                if (rs.getInt("codigoclienteempresa") == codigo) {

                    cliente = new Cliente_Empresa(rs.getInt("codigoclienteempresa"),
                            rs.getString("nombre"), "SA",
                            rs.getString("direccion"), rs.getString("contacto"), rs.getInt("descuento"));

                }

            }


        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        {

        }

        return cliente;

    }


    public void getDBmodificarcliente(Cliente_Individual c) {
        try {
            Statement statement = VariablesGlobales.conn.createStatement();
            String consulta = " SELECT codigoclienteindividual, nombre,apellido, direccion,dpi" +
                    " FROM clienteindividual";
            ResultSet rs = statement.executeQuery(consulta);
            while (rs.next()) {

                if (rs.getInt("codigoclienteindividual") == c.getIdCliente()) {
                    String nombre = c.getNombreCliente();
                    Integer codigo = c.getIdCliente();
                    String sql = "SELECT * FROM clienteindividual;" + "update clienteindividual set nombre=" + "'" + nombre + "'" + "where codigoclienteindividual=" + codigo + ";";
                    rs = statement.executeQuery(sql);

                    System.out.println(sql);
                }

            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }

    public void getDBmodificarproducto(Producto p) {
        try {
            Statement statement = VariablesGlobales.conn.createStatement();
            String consulta ="SELECT codigo,nombre,descripcion,cantidad,precio"+
                    " FROM producto";
            ResultSet rs = statement.executeQuery(consulta);
            while (rs.next()) {

                if (rs.getInt("codigo") == p.getIdProducto()) {
                    String nombre = p.getNombreProducto();
                    Integer codigo = p.getIdProducto();
                    Integer cantidad= p.getCantidadInventario();
                    String sql = "SELECT * FROM producto;" + "update producto set nombre=" + "'" + nombre + "'" + "where codigo=" + codigo + ";"
                            + "update producto set cantidad="  + cantidad + " where codigo=" + codigo + ";";
                    rs = statement.executeQuery(sql);

                    System.out.println(sql);
                }

            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }


    }




    public void getDBmodificarclienteempre(Cliente_Empresa ce) {
        try {
            Statement statement = VariablesGlobales.conn.createStatement();
            String consulta = " SELECT codigoclienteempresa,nombre,direccion,contacto,descuento,sociedad" +
                    " FROM clienteempresa";
            ResultSet rs = statement.executeQuery(consulta);
            while (rs.next()) {
                if (rs.getInt("codigoclienteempresa") == ce.getIdCliente()) {
                    String nombre = ce.getNombreCliente();
                    Integer codigo = ce.getIdCliente();
                    String sql = "SELECT * FROM clienteempresa;" + "update clienteempresa set nombre=" + "'" + nombre + "'" + "where codigoclienteempresa=" + codigo + ";";
                    rs = statement.executeQuery(sql);

                    System.out.println(sql);
                }

            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }


    }

    public void getEliminarRegistroindividual(int codigo) {
        try {
            Statement statement = VariablesGlobales.conn.createStatement();
            String consulta = "DELETE FROM clienteindividual where codigoclienteindividual =" + codigo + ";";
            ResultSet rs = statement.executeQuery(consulta);

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }


    public void getEliminarproducto(int codigo) {
        try {
            Statement statement = VariablesGlobales.conn.createStatement();
            String consulta = "DELETE FROM producto where codigo =" + codigo + ";";
            ResultSet rs = statement.executeQuery(consulta);


        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }


    public void getEliminarRegistroempresa(int codigo) {
        try {
            Statement statement = VariablesGlobales.conn.createStatement();
            String consulta = "DELETE FROM clienteempresa where codigoclienteempresa =" + codigo + ";";
            ResultSet rs = statement.executeQuery(consulta);


        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }


    public List<Cliente_Empresa> getDBclienteempresa() {
        List<Cliente_Empresa> clienteempre = new ArrayList<Cliente_Empresa>();
        try {
            Statement statement = VariablesGlobales.conn.createStatement();
            String consulta = " SELECT codigoclienteempresa,nombre,direccion,contacto,descuento,sociedad" +
                    " FROM clienteempresa";
            ResultSet rs = statement.executeQuery(consulta);
            while (rs.next()) {
                clienteempre.add(new Cliente_Empresa(rs.getInt("codigoclienteempresa"), rs.getString("nombre"), rs.getString("sociedad"),
                        rs.getString("direccion"),
                        rs.getString("contacto"), rs.getInt("descuento")));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return clienteempre;
    }


}
