package src.main.java;

import src.main.java.ProductoDAO;

import java.util.List;

public class MainPrueba {


    public static void main(String []args){

        ProductoDAO dao=new ProductoDAO();
        dao.grabarProducto();
        dao.getDBclienteempresa();
        Cliente_Individual indi= null;
        //indi=dao.getDBbuscarclienteIndi(3);
        //System.out.println(indi.toString());
        dao.getEliminarRegistro(10);


    }
}
