package src.main.java;

public class MainPrueba {


    public static void main(String []args){

        ManejoDAO dao=new ManejoDAO();
        System.out.println(dao.grabarFactura(30).getNumerodefactura());
        //dao.grabarProducto();
        //dao.getDBclienteindividual();
        //Cliente_Individual indi= null;
        //indi=dao.getDBbuscarclienteIndi(3);
        //System.out.println(indi.toString());
        //dao.getEliminarRegistroempresa(23);


    }
}
