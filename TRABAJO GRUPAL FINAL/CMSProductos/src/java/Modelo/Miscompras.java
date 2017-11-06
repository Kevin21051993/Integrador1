package Modelo;
public class Miscompras {
    private String imagen;
    private String nomprod;
    private double precio;
    private int cantidad;
    private double subtotal;
    private int id;
    
    public Miscompras(){
        
    }
    
    public Miscompras(String imagen,String nomprod,double precio,int cantidad,double subtotal,int id){
        this.imagen = imagen;
        this.nomprod = nomprod;
        this.precio = precio;
        this.cantidad = cantidad;
        this.subtotal = subtotal;
        this.id = id;
    }

    public String getImagen() {return imagen;}
    public void setImagen(String imagen) {this.imagen = imagen;}
    public String getNomprod() {return nomprod;}
    public void setNomprod(String nomprod) {this.nomprod = nomprod;}
    public double getPrecio() {return precio;}
    public void setPrecio(double precio) {this.precio = precio;}
    public int getCantidad() {return cantidad;}
    public void setCantidad(int cantidad) {this.cantidad = cantidad;}
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
