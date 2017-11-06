package Modelo;

public class DetalleVenta {
    private String imagen;
    private String nomprod;
    private double precio;
    private int cant;
    private double subtotal;
    private int id;
    
    public DetalleVenta(){
        
    }
    public DetalleVenta(String imagen,String nomprod,double precio,int cant,double subtotal,int id){
        this.imagen = imagen;
        this.nomprod = nomprod;
        this.precio = precio;
        this.cant = cant;
        this.subtotal = subtotal;
        this.id = id;
    }


    public String getImagen() {return imagen;}
    public void setImagen(String imagen) {this.imagen = imagen;}
    public String getNomprod() {return nomprod;}
    public void setNomprod(String nomprod) {this.nomprod = nomprod;}
    public double getPrecio() {return precio;}
    public void setPrecio(double precio) {this.precio = precio;}
    public int getCant() {return cant;}
    public void setCant(int cant) {this.cant = cant;}
    public double getSubtotal() {return subtotal;}
    public void setSubtotal(double subtotal) {this.subtotal = subtotal;}

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

}
