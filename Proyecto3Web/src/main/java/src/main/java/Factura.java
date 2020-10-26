package src.main.java;

public class Factura {

    private int numerodefactura;
    private int idcliente;

    public int getNumerodefactura() {
        return numerodefactura;
    }

    public void setNumerodefactura(int numerodefactura) {
        this.numerodefactura = numerodefactura;
    }

    public int getIdcliente() {
        return idcliente;
    }

    public void setIdcliente(int idcliente) {
        this.idcliente = idcliente;
    }

    public Factura(int numerodefactura, int idcliente) {
        this.numerodefactura = numerodefactura;
        this.idcliente = idcliente;
    }
}
